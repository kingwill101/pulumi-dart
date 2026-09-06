import 'package:pulumi/pulumi.dart' as pulumi;

/// The subscription state.
enum SubscriptionState implements pulumi.PulumiEnum<String> {
  notDefined("NotDefined"),
  enabled("Enabled"),
  warned("Warned"),
  pastDue("PastDue"),
  disabled("Disabled"),
  deleted("Deleted");

  const SubscriptionState(this.wireValue);
  @override
  final String wireValue;

  static SubscriptionState fromValue(String value) {
    for (final item in SubscriptionState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubscriptionState value: $value');
  }
}
