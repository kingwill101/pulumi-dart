import 'package:pulumi/pulumi.dart' as pulumi;

enum SoftDeleteState implements pulumi.PulumiEnum<String> {
  valueInvalid("Invalid"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueAlwaysON("AlwaysON");

  const SoftDeleteState(this.wireValue);
  @override
  final String wireValue;

  static SoftDeleteState fromValue(String value) {
    for (final item in SoftDeleteState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SoftDeleteState value: $value');
  }
}
