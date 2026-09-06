import 'package:pulumi/pulumi.dart' as pulumi;

/// Flag if global mesh is supported.
enum IsGlobal implements pulumi.PulumiEnum<String> {
  valueFalse("False"),
  valueTrue("True");

  const IsGlobal(this.wireValue);
  @override
  final String wireValue;

  static IsGlobal fromValue(String value) {
    for (final item in IsGlobal.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsGlobal value: $value');
  }
}
