
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

@Component
export struct HMHomePage {
  build(){
    Column({ space: 20}) {
      researchBarViewBuilder('春庭雪')
      adBannerViewBuilder()
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
