import { RouteConstants } from '../constants/RouteConstants';
import { CatalogueItemData } from './CatalogueItemData';

/**
 * Catalogue list page view model.
 */
class CatalogueViewModel {
  /**
   * Get Catalogue data.
   *
   * @return {Array<CatalogueItemData>} CatalogueData.
   */
  getCatalogueData(): Array<CatalogueItemData> {
    let catalogueData: Array<CatalogueItemData> = [
      { title: $r('app.string.responsive_layout'), uri: RouteConstants.RESPONSIVE_ROUTE },
      { title: $r('app.string.adaptive_layout'), uri: RouteConstants.ADAPTIVE_ROUTE },
      { title: $r('app.string.system_cap'), uri: RouteConstants.SYSTEM_CAPABILITIES_ROUTE }
    ];
    return catalogueData;
  }
}

let catalogueViewModel = new CatalogueViewModel();

export default catalogueViewModel as CatalogueViewModel;