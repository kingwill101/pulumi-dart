import 'package:pulumi/pulumi.dart' as pulumi;

enum FolderContactNotificationCategorySubscriptionsItem implements pulumi.PulumiEnum<String> {
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
  @override
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
