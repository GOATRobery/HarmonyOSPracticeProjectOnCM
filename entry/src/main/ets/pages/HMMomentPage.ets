
@Builder
export function HMMomentPageBuilder() {
  HMMomentPage()
}

@ComponentV2
export struct HMMomentPage {
  build() {
    Column(){
      Text('推荐')
    }
    .width('100%')
    .height('100%')
    .padding({
      top: 15,
      left: 10,
      bottom: 15,
      right: 10,
    })
  }
}