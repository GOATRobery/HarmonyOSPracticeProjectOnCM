
@ComponentV2
export struct HMFindPage {

  build() {
    Column() {
      Text('猜你喜欢')
        .fontColor('#FFFFFF')
        .width('100%')
        .margin( { bottom: 10 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#131313')
    .padding({ left: 10, right: 10})
  }
}