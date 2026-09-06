import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of identity used for the image template. The type 'None' will remove any identities from the image template.
enum ResourceIdentityType implements pulumi.PulumiEnum<String> {
  valueUserAssigned("UserAssigned"),
  valueNone("None");

  const ResourceIdentityType(this.wireValue);
  @override
  final String wireValue;

  static ResourceIdentityType fromValue(String value) {
    for (final item in ResourceIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceIdentityType value: $value');
  }
}
