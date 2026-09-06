import 'package:pulumi/pulumi.dart' as pulumi;

enum CrossSubscriptionRestoreState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valuePermanentlyDisabled("PermanentlyDisabled");

  const CrossSubscriptionRestoreState(this.wireValue);
  @override
  final String wireValue;

  static CrossSubscriptionRestoreState fromValue(String value) {
    for (final item in CrossSubscriptionRestoreState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CrossSubscriptionRestoreState value: $value');
  }
}
