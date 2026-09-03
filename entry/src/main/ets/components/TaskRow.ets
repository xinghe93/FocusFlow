import { AppLayout } from '../common/AppLayout';
import { TaskItem, TaskStatus } from '../models/TaskItem';

@Component
export struct TaskRow {
  @Prop task: TaskItem;

  build() {
    Row({ space: 12 }) {
      Row()
        .width(20)
        .height(20)
        .borderRadius(10)
        .border({
          width: 2,
          color: this.task.status === TaskStatus.Completed ?
            $r('app.color.brand_primary') : $r('app.color.divider')
        })
        .backgroundColor(this.task.status === TaskStatus.Completed ?
          $r('app.color.surface_secondary') : Color.Transparent)
      Column({ space: 5 }) {
        Text(this.task.title)
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .fontColor($r('app.color.text_primary'))
          .maxLines(2)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
        Row({ space: 4 }) {
          Text(this.task.estimatedMinutes.toString())
            .fontSize(12)
            .fontColor($r('app.color.text_secondary'))
          Text($r('app.string.minutes_short'))
            .fontSize(12)
            .fontColor($r('app.color.text_secondary'))
        }
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)
    }
    .width('100%')
    .padding({ top: 14, bottom: 14, left: AppLayout.CARD_PADDING, right: AppLayout.CARD_PADDING })
  }
}
