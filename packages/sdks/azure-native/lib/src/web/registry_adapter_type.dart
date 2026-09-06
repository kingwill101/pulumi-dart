import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the registry adapter.
enum RegistryAdapterType implements pulumi.PulumiEnum<String> {
  binary("Binary"),
  string_("String"),
  expandString("Expand_String"),
  multiString("Multi_String"),
  dWord("DWord"),
  qWord("QWord");

  const RegistryAdapterType(this.wireValue);
  @override
  final String wireValue;

  static RegistryAdapterType fromValue(String value) {
    for (final item in RegistryAdapterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegistryAdapterType value: $value');
  }
}
