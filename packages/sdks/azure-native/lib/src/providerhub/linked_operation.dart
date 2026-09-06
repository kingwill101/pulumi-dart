import 'package:pulumi/pulumi.dart' as pulumi;

/// The linked operation.
enum LinkedOperation implements pulumi.PulumiEnum<String> {
  none("None"),
  crossResourceGroupResourceMove("CrossResourceGroupResourceMove"),
  crossSubscriptionResourceMove("CrossSubscriptionResourceMove");

  const LinkedOperation(this.wireValue);
  @override
  final String wireValue;

  static LinkedOperation fromValue(String value) {
    for (final item in LinkedOperation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinkedOperation value: $value');
  }
}
