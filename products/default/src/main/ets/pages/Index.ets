import { CatalogueListComponent } from '../view/CatalogueListComponent';
import CatalogueViewModel from '../viewmodel/CatalogueViewModel';

/**
 * Index is the entry of application and Here is a list showing three buttons,
 * click the button to jump to different pages.
 */
@Entry
@Component
struct Index {
  build() {
    Column() {
      CatalogueListComponent({ catalogue: CatalogueViewModel.getCatalogueData() })
    }
    .backgroundColor($r('app.color.start_window_background'))
  }
}