/// The access level allowed for the users in this key set.
enum BmcKeySetPrivilegeLevel {
  valueReadOnly("ReadOnly"),
  valueAdministrator("Administrator");

  const BmcKeySetPrivilegeLevel(this.wireValue);
  final String wireValue;

  static BmcKeySetPrivilegeLevel fromValue(String value) {
    for (final item in BmcKeySetPrivilegeLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BmcKeySetPrivilegeLevel value: $value');
  }
}
