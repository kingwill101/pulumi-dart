enum FolderContactNotificationCategorySubscriptionsItem {
  notificationCategoryUnspecified("NOTIFICATION_CATEGORY_UNSPECIFIED"),
  all("ALL"),
  suspension("SUSPENSION"),
  security("SECURITY"),
  technical("TECHNICAL"),
  billing("BILLING"),
  legal("LEGAL"),
  productUpdates("PRODUCT_UPDATES"),
  technicalIncidents("TECHNICAL_INCIDENTS");

  const FolderContactNotificationCategorySubscriptionsItem(this.wireValue);
  final String wireValue;

  static FolderContactNotificationCategorySubscriptionsItem fromValue(String value) {
    for (final item in FolderContactNotificationCategorySubscriptionsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FolderContactNotificationCategorySubscriptionsItem value: $value');
  }
}

