import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of the environment.
enum EnvironmentKind implements pulumi.PulumiEnum<String> {
  valueGen1("Gen1"),
  valueGen2("Gen2");

  const EnvironmentKind(this.wireValue);
  @override
  final String wireValue;

  static EnvironmentKind fromValue(String value) {
    for (final item in EnvironmentKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentKind value: $value');
  }
}
