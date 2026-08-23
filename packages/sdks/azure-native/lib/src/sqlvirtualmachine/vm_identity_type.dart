/// Identity type of the virtual machine. Specify None to opt-out of Managed Identities.
enum VmIdentityType {
  none("None"),
  systemAssigned("SystemAssigned"),
  userAssigned("UserAssigned");

  const VmIdentityType(this.wireValue);
  final String wireValue;

  static VmIdentityType fromValue(String value) {
    for (final item in VmIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VmIdentityType value: $value');
  }
}
