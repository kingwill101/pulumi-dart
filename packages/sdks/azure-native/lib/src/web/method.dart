import 'package:pulumi/pulumi.dart' as pulumi;

/// The method that should be used to authenticate the user.
enum Method implements pulumi.PulumiEnum<String> {
  valueClientSecretPost("ClientSecretPost");

  const Method(this.wireValue);
  @override
  final String wireValue;

  static Method fromValue(String value) {
    for (final item in Method.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Method value: $value');
  }
}
