import 'package:pulumi/pulumi.dart' as pulumi;

enum ImmutabilityState implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueUnlocked("Unlocked"),
  valueLocked("Locked");

  const ImmutabilityState(this.wireValue);
  @override
  final String wireValue;

  static ImmutabilityState fromValue(String value) {
    for (final item in ImmutabilityState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImmutabilityState value: $value');
  }
}
