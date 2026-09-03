import { FeaturePlaceholder } from '../../components/FeaturePlaceholder';

@Component
export struct StatisticsPage {
  build() {
    FeaturePlaceholder({
      title: $r('app.string.statistics_page_title'),
      description: $r('app.string.statistics_page_description')
    })
  }
}
