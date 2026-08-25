@Builder
export function HMAdvertisePageBuilder() {
  HMAdvertisePage()
}

@Component
struct HMAdvertisePage {
  pathStack: NavPathStack = new NavPathStack()
  @State skipSeconds: number = 3
  private countdownTimerId: number = -1

  private clearCountdown(): void {
    if (this.countdownTimerId !== -1) {
      clearInterval(this.countdownTimerId)
      this.countdownTimerId = -1
    }
  }

  private goHome(): void {
    this.clearCountdown()
    this.jumpToHomePage()
  }

  private jumpToHomePage(): void {
    this.pathStack.replacePathByName("HMMainPage", null, false)
  }

  // viewWillAppear
  aboutToAppear(): void {
    this.countdownTimerId = setInterval(() => {
      if (this.skipSeconds <= 1) {
        this.goHome()
      } else {
        this.skipSeconds--
      }
    }, 1000)
  }

  // viewWillDisappear
  aboutToDisappear(): void {
    this.clearCountdown()
  }

  build() {
    NavDestination() {
      Stack({alignContent: Alignment.TopEnd}) {
        Image($r("app.media.shenzhen_night"))
          .width("100%")
          .height("100%")
          .expandSafeArea([SafeAreaType.SYSTEM],[SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])
        Button(`${this.skipSeconds}s 跳过`)
          .borderRadius(8)
          .backgroundColor(Color.Gray)
          .fontColor(Color.White)
          .margin(15)
          .onClick((event: ClickEvent) => {
            this.goHome()
          })
      }
    }
    .onReady((context: NavDestinationContext) => {
      this.pathStack = context.pathStack
    })
  }
}