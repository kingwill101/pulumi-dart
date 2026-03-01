/// The type of identity used for the image template. The type 'None' will remove any identities from the image template.
enum ResourceIdentityType {
  valueUserAssigned("UserAssigned"),
  valueNone("None");

  const ResourceIdentityType(this.value);
  final String value;

  static ResourceIdentityType fromValue(String value) {
    for (final item in ResourceIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceIdentityType value: $value');
  }
}

