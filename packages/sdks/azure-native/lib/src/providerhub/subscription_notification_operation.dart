import 'package:pulumi/pulumi.dart' as pulumi;

/// The action.
enum SubscriptionNotificationOperation implements pulumi.PulumiEnum<String> {
  notDefined("NotDefined"),
  deleteAllResources("DeleteAllResources"),
  softDeleteAllResources("SoftDeleteAllResources"),
  noOp("NoOp"),
  billingCancellation("BillingCancellation"),
  undoSoftDelete("UndoSoftDelete");

  const SubscriptionNotificationOperation(this.wireValue);
  @override
  final String wireValue;

  static SubscriptionNotificationOperation fromValue(String value) {
    for (final item in SubscriptionNotificationOperation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubscriptionNotificationOperation value: $value');
  }
}
