import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of identity used for the resource.
enum AmlFilesystemIdentityType implements pulumi.PulumiEnum<String> {
  valueUserAssigned("UserAssigned"),
  valueNone("None");

  const AmlFilesystemIdentityType(this.wireValue);
  @override
  final String wireValue;

  static AmlFilesystemIdentityType fromValue(String value) {
    for (final item in AmlFilesystemIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AmlFilesystemIdentityType value: $value');
  }
}
