import { FeaturePlaceholder } from '../../components/FeaturePlaceholder';

@Component
export struct FocusPage {
  build() {
    FeaturePlaceholder({
      title: $r('app.string.focus_page_title'),
      description: $r('app.string.focus_page_description')
    })
  }
}
