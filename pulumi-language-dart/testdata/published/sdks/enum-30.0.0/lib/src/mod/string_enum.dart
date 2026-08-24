import 'package:pulumi/pulumi.dart' as pulumi;

enum StringEnum implements pulumi.PulumiEnum<String> {
  stringOne("one"),
  stringTwo("two");

  const StringEnum(this.wireValue);
  @override
  final String wireValue;

  static StringEnum fromValue(String value) {
    for (final item in StringEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StringEnum value: $value');
  }
}
