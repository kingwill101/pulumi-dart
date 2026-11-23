import 'package:pulumi/pulumi.dart' as pulumi;

enum EnvironmentPermission implements pulumi.PulumiEnum<String> {
  valueNone("none"),
  valueRead("read"),
  valueOpen("open"),
  valueWrite("write"),
  valueAdmin("admin");

  const EnvironmentPermission(this.wireValue);
  @override
  final String wireValue;

  static EnvironmentPermission fromValue(String value) {
    for (final item in EnvironmentPermission.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentPermission value: $value');
  }
}
