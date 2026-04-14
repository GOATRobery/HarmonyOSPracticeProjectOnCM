
@Builder
export function HMHomePageBuilder() {
  HMHomePage()
}

@Component
struct HMHomePage {
  pathStack: NavPathStack = new NavPathStack()
  build(){
    NavDestination(){

    }
    .title("首页")
    .onReady((context: NavDestinationContext) => {
      this.pathStack = context.pathStack;
    })
  }
}