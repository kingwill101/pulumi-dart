import 'package:pulumi/pulumi.dart' as pulumi;

enum NetworkMode implements pulumi.PulumiEnum<String> {
  valueDefault("default"),
  valueHost("host"),
  valueNone("none");

  const NetworkMode(this.wireValue);
  @override
  final String wireValue;

  static NetworkMode fromValue(String value) {
    for (final item in NetworkMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkMode value: $value');
  }
}
