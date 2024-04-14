import { CommonConstants } from '../constants/CommonConstants';
import { TabBarItem } from './TabBarItem';

/**
 * Binds data to components and provides interfaces.
 */
export class TabsViewModel {
  /**
   * Get item information for the tab.
   *
   * @return {Array<TabBarItem>} tabItems
   */
  getTabData(): Array<TabBarItem> {
		let oneInfo : TabBarItem = new TabBarItem();
		oneInfo.name = $r('app.string.tab_name_grid');
		oneInfo.icon = $r('app.media.ic_tabs_icon');
		oneInfo.selectIcon = $r('app.media.ic_tabs_icon_selected');
    let tabItems: Array<TabBarItem> = [{
			name: $r('app.string.tab_name_line'),
			icon: $r('app.media.ic_tabs_icon'),
			selectIcon: $r('app.media.ic_tabs_icon_selected')
		},oneInfo];
    for (let i = 0; i < CommonConstants.TAB_SIZE; i++) {
      let itemInfo: TabBarItem = new TabBarItem();
      itemInfo.name = $r('app.string.tab_name');
      itemInfo.icon = $r('app.media.ic_tabs_icon');
      itemInfo.selectIcon = $r('app.media.ic_tabs_icon_selected');
      tabItems.push(itemInfo);
    }
    return tabItems;
  }
}

let tabsViewModel = new TabsViewModel();

export default tabsViewModel as TabsViewModel;
