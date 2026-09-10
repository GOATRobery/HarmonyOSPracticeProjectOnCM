import { AppStorageV2 } from '@kit.ArkUI'

@Entry
@Component
struct Index {
  pathStack: NavPathStack = AppStorageV2.connect( NavPathStack, 'rooterController', () => new NavPathStack())!

  build() {
    Navigation(this.pathStack){
    }
    .onAppear(() => {
      this.pathStack.pushPathByName("HMAdvertisePage",null,false);
    })
    .hideNavBar(true)
  }
}