import 'package:pulumi/pulumi.dart' as pulumi;

/// The vault type, whether it is existing or has to be created.
enum VaultType implements pulumi.PulumiEnum<String> {
  valueExisting("Existing"),
  valueNew("New");

  const VaultType(this.wireValue);
  @override
  final String wireValue;

  static VaultType fromValue(String value) {
    for (final item in VaultType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VaultType value: $value');
  }
}
