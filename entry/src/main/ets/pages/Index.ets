@Entry //程序入口
@Component //其以下内容为组件
struct Index { //组件的名字为Index
  @State message: string = 'Hello This World'; //装饰器State标记后面属性的状态，用处是可以数据驱动视图

  build() { //构建组件的逻辑块
    //build 中要有唯一的容器根组件
    Column() {
      Image($r("app.media.pexels"))
        .width(280)
        .margin({bottom:40})
        .border({
          width:2,
          color:Color.Yellow,
          radius:40,
          style:BorderStyle.Solid
        })
      Text("在千年侗寨，感受乡村全面振兴的力量")
        .fontColor('#000000')
        .fontSize(18)//默认是fp,可以根据手机设置字体大小缩放
        .fontWeight(420)//范围在100～900，默认400
        .height(18)
        .width(320)
        .margin({left:10})
      Text("新华社新闻")
        .fontColor('#999999')
        .fontSize(14)//默认是fp,可以根据手机设置字体大小缩放
        .fontWeight(400)//范围在100～900，默认400
        .height(18)
        .width(320)
        .margin({left:10,top:4})
      Text("桂豫持续扩大对象开放")
        .fontColor('#000000')
        .fontSize(18)//默认是fp,可以根据手机设置字体大小缩放
        .fontWeight(420)//范围在100～900，默认400
        .height(18)
        .width(320)
        .margin({left:10,top:8})
      Text("央视新闻")
        .fontColor('#999999')
        .fontSize(14)//默认是fp,可以根据手机设置字体大小缩放
        .fontWeight(400)//范围在100～900，默认400
        .height(18)
        .width(320)
        .margin({left:10,top:4})
      Button("开启订阅")
        .width(120)
        .height(40)
        .fontColor(Color.Green)
        .fontSize(18)
        .fontWeight(500)
        .backgroundColor("#FFFFFF")
        .margin({
          top:10
        })
        .border({
          width:1,
          color:Color.Green,
          radius:20,
          style:BorderStyle.Solid,
        })
    }
    .padding({top:10,left:20,right:20,bottom:10})
  }
}
