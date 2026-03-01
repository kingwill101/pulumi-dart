/// The access level allowed for the users in this key set.
enum BmcKeySetPrivilegeLevel {
  valueReadOnly("ReadOnly"),
  valueAdministrator("Administrator");

  const BmcKeySetPrivilegeLevel(this.value);
  final String value;

  static BmcKeySetPrivilegeLevel fromValue(String value) {
    for (final item in BmcKeySetPrivilegeLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BmcKeySetPrivilegeLevel value: $value');
  }
}

