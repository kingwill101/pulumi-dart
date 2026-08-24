import 'package:pulumi/pulumi.dart' as pulumi;

enum MyEnum implements pulumi.PulumiEnum<String> {
  one("one"),
  two("two"),
  three("three");

  const MyEnum(this.wireValue);
  @override
  final String wireValue;

  static MyEnum fromValue(String value) {
    for (final item in MyEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MyEnum value: $value');
  }
}
