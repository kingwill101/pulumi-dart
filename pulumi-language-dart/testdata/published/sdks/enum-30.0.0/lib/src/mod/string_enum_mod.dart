import 'package:pulumi/pulumi.dart' as pulumi;

enum StringEnumMod implements pulumi.PulumiEnum<String> {
  stringOne("one"),
  stringTwo("two");

  const StringEnumMod(this.wireValue);
  @override
  final String wireValue;

  static StringEnumMod fromValue(String value) {
    for (final item in StringEnumMod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StringEnumMod value: $value');
  }
}
