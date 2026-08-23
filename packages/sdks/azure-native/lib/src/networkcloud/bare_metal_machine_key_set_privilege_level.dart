/// The access level allowed for the users in this key set.
enum BareMetalMachineKeySetPrivilegeLevel {
  valueStandard("Standard"),
  valueSuperuser("Superuser");

  const BareMetalMachineKeySetPrivilegeLevel(this.wireValue);
  final String wireValue;

  static BareMetalMachineKeySetPrivilegeLevel fromValue(String value) {
    for (final item in BareMetalMachineKeySetPrivilegeLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BareMetalMachineKeySetPrivilegeLevel value: $value');
  }
}
