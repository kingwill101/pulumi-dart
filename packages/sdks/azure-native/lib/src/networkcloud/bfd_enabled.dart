import 'package:pulumi/pulumi.dart' as pulumi;

/// The indicator to prevent the use of IP addresses ending with .0 and .255 for this pool. Enabling this option will only use IP addresses between .1 and .254 inclusive.
enum BfdEnabled implements pulumi.PulumiEnum<String> {
  valueTrue("True"),
  valueFalse("False");

  const BfdEnabled(this.wireValue);
  @override
  final String wireValue;

  static BfdEnabled fromValue(String value) {
    for (final item in BfdEnabled.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BfdEnabled value: $value');
  }
}
