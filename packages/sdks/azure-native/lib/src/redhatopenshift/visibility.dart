import 'package:pulumi/pulumi.dart' as pulumi;

/// Ingress visibility.
enum Visibility implements pulumi.PulumiEnum<String> {
  valuePrivate("Private"),
  valuePublic("Public");

  const Visibility(this.wireValue);
  @override
  final String wireValue;

  static Visibility fromValue(String value) {
    for (final item in Visibility.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Visibility value: $value');
  }
}
