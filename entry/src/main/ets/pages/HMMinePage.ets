@Builder
export function HMMinePageBuilder() {
  HMMinePage()
}

@ComponentV2
export struct HMMinePage {
  build() {
    Column(){
      Text('我的')
    }
    .width('100%')
    .height('100%')
    .padding({
      top: 15,
      bottom: 15,
      left: 10,
      right: 10
    })
  }
}