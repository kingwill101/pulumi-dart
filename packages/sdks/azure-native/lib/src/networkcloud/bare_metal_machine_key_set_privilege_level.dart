/// The access level allowed for the users in this key set.
enum BareMetalMachineKeySetPrivilegeLevel {
  valueStandard("Standard"),
  valueSuperuser("Superuser");

  const BareMetalMachineKeySetPrivilegeLevel(this.value);
  final String value;

  static BareMetalMachineKeySetPrivilegeLevel fromValue(String value) {
    for (final item in BareMetalMachineKeySetPrivilegeLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BareMetalMachineKeySetPrivilegeLevel value: $value');
  }
}

