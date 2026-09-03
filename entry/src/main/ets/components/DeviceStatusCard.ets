import { AppLayout } from '../common/AppLayout';
import { DeviceStatus } from '../models/DeviceStatus';

@Component
export struct DeviceStatusCard {
  @Prop device: DeviceStatus;

  build() {
    Row({ space: 14 }) {
      Stack() {
        Row()
          .width(42)
          .height(42)
          .borderRadius(21)
          .backgroundColor($r('app.color.surface_secondary'))
        Text('●')
          .fontSize(13)
          .fontColor($r('app.color.brand_primary'))
      }
      .width(42)
      .height(42)

      Column({ space: 5 }) {
        Text(this.device.displayName)
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .fontColor($r('app.color.text_primary'))
        Text($r('app.string.device_sync_hint'))
          .fontSize(13)
          .fontColor($r('app.color.text_secondary'))
          .maxLines(2)
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)

      Text($r('app.string.device_current'))
        .fontSize(12)
        .fontColor($r('app.color.brand_primary'))
    }
    .width('100%')
    .padding(AppLayout.CARD_PADDING)
    .backgroundColor($r('app.color.surface_primary'))
    .borderRadius(AppLayout.CARD_RADIUS)
  }
}
