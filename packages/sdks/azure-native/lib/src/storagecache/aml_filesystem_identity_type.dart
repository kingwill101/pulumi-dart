/// The type of identity used for the resource.
enum AmlFilesystemIdentityType {
  valueUserAssigned("UserAssigned"),
  valueNone("None");

  const AmlFilesystemIdentityType(this.wireValue);
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
