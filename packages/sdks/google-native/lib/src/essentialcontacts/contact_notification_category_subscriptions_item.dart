enum ContactNotificationCategorySubscriptionsItem {
  notificationCategoryUnspecified("NOTIFICATION_CATEGORY_UNSPECIFIED"),
  all("ALL"),
  suspension("SUSPENSION"),
  security("SECURITY"),
  technical("TECHNICAL"),
  billing("BILLING"),
  legal("LEGAL"),
  productUpdates("PRODUCT_UPDATES"),
  technicalIncidents("TECHNICAL_INCIDENTS");

  const ContactNotificationCategorySubscriptionsItem(this.wireValue);
  final String wireValue;

  static ContactNotificationCategorySubscriptionsItem fromValue(String value) {
    for (final item in ContactNotificationCategorySubscriptionsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContactNotificationCategorySubscriptionsItem value: $value');
  }
}

