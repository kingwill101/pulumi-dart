import 'package:pulumi/pulumi.dart' as pulumi;

/// The network traffic is allowed or denied.
enum Access implements pulumi.PulumiEnum<String> {
  valueAllow("allow"),
  valueDeny("deny");

  const Access(this.wireValue);
  @override
  final String wireValue;

  static Access fromValue(String value) {
    for (final item in Access.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Access value: $value');
  }
}
