import 'package:pulumi/pulumi.dart' as pulumi;

/// Scope of interconnect group resource.
enum InterconnectGroupScope implements pulumi.PulumiEnum<String> {
  none("None"),
  infiniBand("InfiniBand");

  const InterconnectGroupScope(this.wireValue);
  @override
  final String wireValue;

  static InterconnectGroupScope fromValue(String value) {
    for (final item in InterconnectGroupScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InterconnectGroupScope value: $value');
  }
}
