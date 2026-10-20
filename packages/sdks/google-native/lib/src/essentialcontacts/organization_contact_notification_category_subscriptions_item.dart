import 'package:pulumi/pulumi.dart' as pulumi;

enum OrganizationContactNotificationCategorySubscriptionsItem implements pulumi.PulumiEnum<String> {
  notificationCategoryUnspecified("NOTIFICATION_CATEGORY_UNSPECIFIED"),
  all("ALL"),
  suspension("SUSPENSION"),
  security("SECURITY"),
  technical("TECHNICAL"),
  billing("BILLING"),
  legal("LEGAL"),
  productUpdates("PRODUCT_UPDATES"),
  technicalIncidents("TECHNICAL_INCIDENTS");

  const OrganizationContactNotificationCategorySubscriptionsItem(this.wireValue);
  @override
  final String wireValue;

  static OrganizationContactNotificationCategorySubscriptionsItem fromValue(String value) {
    for (final item in OrganizationContactNotificationCategorySubscriptionsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrganizationContactNotificationCategorySubscriptionsItem value: $value');
  }
}
