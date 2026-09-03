import { AppLayout } from '../common/AppLayout';

@Component
export struct FeaturePlaceholder {
  @Prop title: ResourceStr;
  @Prop description: ResourceStr;

  build() {
    Column({ space: 14 }) {
      Text(this.title)
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .fontColor($r('app.color.text_primary'))
      Text(this.description)
        .fontSize(16)
        .lineHeight(24)
        .fontColor($r('app.color.text_secondary'))
    }
    .width('100%')
    .height('100%')
    .alignItems(HorizontalAlign.Start)
    .padding({
      left: AppLayout.PAGE_HORIZONTAL,
      right: AppLayout.PAGE_HORIZONTAL,
      top: 48
    })
    .backgroundColor($r('app.color.app_background'))
  }
}
