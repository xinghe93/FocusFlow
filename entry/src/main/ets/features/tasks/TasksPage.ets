import { FeaturePlaceholder } from '../../components/FeaturePlaceholder';

@Component
export struct TasksPage {
  build() {
    FeaturePlaceholder({
      title: $r('app.string.tasks_page_title'),
      description: $r('app.string.tasks_page_description')
    })
  }
}
