/// Optional. Online stock state of the catalog item. Default is `IN_STOCK`.
enum GoogleCloudRecommendationengineV1beta1ProductCatalogItemStockState {
  stockStateUnspecified("STOCK_STATE_UNSPECIFIED"),
  inStock("IN_STOCK"),
  outOfStock("OUT_OF_STOCK"),
  preorder("PREORDER"),
  backorder("BACKORDER");

  const GoogleCloudRecommendationengineV1beta1ProductCatalogItemStockState(this.wireValue);
  final String wireValue;

  static GoogleCloudRecommendationengineV1beta1ProductCatalogItemStockState fromValue(String value) {
    for (final item in GoogleCloudRecommendationengineV1beta1ProductCatalogItemStockState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudRecommendationengineV1beta1ProductCatalogItemStockState value: $value');
  }
}

