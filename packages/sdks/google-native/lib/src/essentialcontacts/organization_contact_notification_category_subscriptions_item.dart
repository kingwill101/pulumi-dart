enum OrganizationContactNotificationCategorySubscriptionsItem {
  notificationCategoryUnspecified("NOTIFICATION_CATEGORY_UNSPECIFIED"),
  all("ALL"),
  suspension("SUSPENSION"),
  security("SECURITY"),
  technical("TECHNICAL"),
  billing("BILLING"),
  legal("LEGAL"),
  productUpdates("PRODUCT_UPDATES"),
  technicalIncidents("TECHNICAL_INCIDENTS");

  const OrganizationContactNotificationCategorySubscriptionsItem(this.value);
  final String value;

  static OrganizationContactNotificationCategorySubscriptionsItem fromValue(String value) {
    for (final item in OrganizationContactNotificationCategorySubscriptionsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrganizationContactNotificationCategorySubscriptionsItem value: $value');
  }
}

