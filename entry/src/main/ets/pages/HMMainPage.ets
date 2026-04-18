@Builder
export function HMMainPageBuilder() {
  HMMainPage()
}

interface HMTabData {
  text: string,
  icon: ResourceStr
}

@ComponentV2
struct HMMainPage {
  @Local currentIndex: number = 0
  pathStack: NavPathStack = new NavPathStack()
  tabBarData: HMTabData[] = [
    { text: "推荐", icon: $r("app.media.ic_recommend") },
    { text: "发现", icon: $r("app.media.ic_find") },
    { text: "动态", icon: $r("app.media.ic_moment") },
    { text: "我的", icon: $r("app.media.ic_mine") },
  ]

  @Builder
  tabBarBuilder(item: HMTabData, index: number) {
    Column({space: 5}) {
      Image(item.icon)
        .width(24)
        .fillColor(this.currentIndex == index ? "#E85A88" : "#63AAAA")
      Text(item.text)
        .fontSize(14)
        .fontColor(this.currentIndex == index ? "#E85A88" : "#63AAAA")
    }
  }

  build() {
    NavDestination(){
      Tabs({ barPosition: BarPosition.End }){
        ForEach(this.tabBarData, (item: HMTabData, index: number) => {
          TabContent(){
            if (this.currentIndex == 0) {

            }else if (this.currentIndex == 2) {

            }else {

            }
          }
          .tabBar(this.tabBarBuilder(item, index))
          .backgroundColor("#131215")
          .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])
        })
      }
      .backgroundColor("#3B3F42")
      .expandSafeArea([SafeAreaType.SYSTEM],[SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])
      .onChange(() => {

      })
    }
    .onReady((context: NavDestinationContext) => {
      this.pathStack = context.pathStack
    })
  }
}