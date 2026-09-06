import 'package:pulumi/pulumi.dart' as pulumi;

/// Volume size
enum SizeTypes implements pulumi.PulumiEnum<String> {
  valueSmall("Small"),
  valueMedium("Medium"),
  valueLarge("Large");

  const SizeTypes(this.wireValue);
  @override
  final String wireValue;

  static SizeTypes fromValue(String value) {
    for (final item in SizeTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SizeTypes value: $value');
  }
}
