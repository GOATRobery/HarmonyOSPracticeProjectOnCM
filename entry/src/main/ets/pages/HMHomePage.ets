import { HMRecommendDailyModel, HMRecommendListType } from '../models/HMRecommendDailyModel'
import text from '@ohos.graphics.text'

@Builder
export function HMHomePageBuilder() {
  HMHomePage()
}

const SWIPER_LIST: string[] = [
  "http://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/HeimaCloudMusic/banner1.png",
  "http://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/HeimaCloudMusic/banner2.png",
  "http://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/HeimaCloudMusic/banner3.png",
  "http://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/HeimaCloudMusic/banner4.png",
  "http://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/HeimaCloudMusic/banner5.png"
]

// 每日推荐数据
const DAILY_RECOMMEND: HMRecommendDailyModel[] = [
  {
    img: 'http://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/HeimaCloudMusic/recommend1.png',
    shortStr: '每日推荐 | 今天从《不得不爱》听起 | 私人雷达',
    titleStr: '每日推荐',
    bgColor: '#660000',
    shortBgColor: '#382e2f'
  },
  {
    img: 'http://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/HeimaCloudMusic/recommend2.png',
    shortStr: '从 [Nothing on Me] 开启无限漫游',
    titleStr: '私人漫游',
    bgColor: '#382e2f',
    shortBgColor: '#a37862'
  },
  {
    img: 'http://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/HeimaCloudMusic/recommend3.png',
    shortStr: '每日推荐 | 今天从《不得不爱》听起 | 私人雷达',
    titleStr: '华语流行',
    bgColor: '#a37862',
    shortBgColor: '#174847'
  },
  {
    img: 'http://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/HeimaCloudMusic/recommend4.png',
    shortStr: '每日推荐 | 今天从《不得不爱》听起 | 私人雷达',
    titleStr: '私人雷达',
    bgColor: '#174847',
    shortBgColor: '#174847'
  }
]
// 推荐歌单数据
const RECOMMENT_LIST: HMRecommendListType[] = [
  {
    img: 'http://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/HeimaCloudMusic/list1.jpg',
    title: '每日推荐 | 今天从《不得不爱》听起 | 私人雷达',
    count: '270.9万'
  },
  {
    img: 'http://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/HeimaCloudMusic/list2.jpg',
    title: 'Yasuo和更多好听的 | 华语私人雷达 | 回忆8090',
    count: '476.1万'
  },
  {
    img: 'http://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/HeimaCloudMusic/list3.jpg',
    title: 'Trap Remix丨当欧美热单遇上毒性低音',
    count: '186.3万'
  },
  {
    img: 'http://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/HeimaCloudMusic/list4.jpg',
    title: '满级人类进化之路必备BGM | 根本停不下来',
    count: '186.3万'
  },
  {
    img: 'http://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/HeimaCloudMusic/list5.jpg',
    title: '认真去聆听这个世界的每一分每一秒 (强烈推荐)',
    count: '362.8万'
  }
]

@Builder
function researchBarViewBuilder(placehorlderStr: string) {
  Row() {
    Image($r('app.media.ic_search'))
      .width(22)
      .fillColor('#817083')
      .padding({
        left:10
      })
    TextInput({ placeholder: '春庭雪'})
      .placeholderColor('#817083')
      .padding({ left: 5 })
      .fontColor('#999999')
      .layoutWeight(1)
    Image($r('app.media.ic_code'))
      .width(20)
      .fillColor('#817D83')
      .padding({
        right:10
      })
  }
  .width('100%')
  .backgroundColor('#2D2B29')
  .border({ radius: 20 })
  .padding({ left: 8, right: 8 })
}

@Builder
function adBannerViewBuilder() {
  Swiper(){
    ForEach(SWIPER_LIST, (item: string) => {
      Image(item)
        .width('100%')
    })
  }
  .border({radius:10})
  .indicator(Indicator.dot().selectedColor('#E85A88'))
  .autoPlay(true)
}

@Builder
function titleViewBuilder(titleStr: string) {
  Row(){
    Text(titleStr)
      .fontColor('#FFFFFF')
      .fontWeight(700)
      .layoutWeight(1)
    Image($r('app.media.ic_more'))
      .width(22)
      .fillColor('#FFFFFF')
  }
  .width('100%')
  .height(40)
}

@Builder
function musicCardItem(item: HMRecommendDailyModel) {
  Column(){
    Text(item.titleStr)
      .backgroundColor(item.bgColor)
      .width('100%')
      .height(30)
      .padding({ left:5 })
      .fontSize(14)
      .fontWeight(700)
      .fontColor('#FFFFFF')
    Image(item.img)
      .width('100%')
    Text(item.shortStr)
      .backgroundColor(item.shortBgColor)
      .width('100%')
      .padding(5)
      .fontSize(14)
      .fontColor('#FFFFFF')
      .maxLines(2)
      .textOverflow({ overflow: TextOverflow.Ellipsis})

  }
  .border({ radius:10 })
  .width('40%')
  .margin({ right:10 })
  .clip(true)
}

@Builder
function dailyRecommond() {
  Column() {
    titleViewBuilder('每日推荐')

    List(){
      ForEach(DAILY_RECOMMEND, (item: HMRecommendDailyModel, index: number) => {
        ListItem() {
          musicCardItem(item)
        }
      })
    }
    .scrollBar(BarState.Off)
    .listDirection(Axis.Horizontal)
    .height(230)
  }
}

@Builder
function musicListRecommend() {
  titleViewBuilder('推荐歌单')
  List() {
    ForEach(RECOMMENT_LIST, (item: HMRecommendListType) => {
      ListItem(){
        Column() {
          Stack({ alignContent: Alignment.TopStart}) {
            Image(item.img)
              .width('100%')
              .height(100)
              .border({ radius:8 })
            Text(item.count)
              .fontColor('#FFFFFF')
              .fontSize(12)
              .fontWeight(700)
              .margin(5)
          }

          Text(item.title)
            .fontColor('#FFFFFF')
            .fontSize(14)
            .width('100%')
            .padding(5)
            .maxLines(2)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
        }
        .width('30%')
        .margin({ right:10 })
      }
    })
  }
  .scrollBar(BarState.Off)
  .listDirection(Axis.Horizontal)
  .height(200)
}

@Component
export struct HMHomePage {
  build(){
      Column({ space: 20}) {
        researchBarViewBuilder('春庭雪')
        Scroll() {
          Column({ space: 20 }) {
            adBannerViewBuilder()
            dailyRecommond()
            musicListRecommend()
          }
          .width('100%')
        }
        .edgeEffect(EdgeEffect.Spring, { alwaysEnabled: true })
        .friction(0.75)
        .scrollBar(BarState.Off)
        .width('100%')
        .layoutWeight(1)
      }
      .width('100%')
      .height('100%')
      .padding({
        left: 10,
        right: 10,
        top: 15,
        bottom: 15
      })
    }
}
