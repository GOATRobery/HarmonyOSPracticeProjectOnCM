
@Builder
export function HMAdvertisePageBuilder() {
  HMAdvertisePage()
}

@Component
struct HMAdvertisePage {
  pathStack: NavPathStack = new NavPathStack()
  build() {
    NavDestination() {
      Button("Click and Jump into Home Page").onClick((event: ClickEvent) => {
        this.pathStack.pushPathByName("HMHomePage",null,false);
      })
    }
    .title("广告开屏")
    .onReady((context: NavDestinationContext) => {
      this.pathStack = context.pathStack
    })
  }
}