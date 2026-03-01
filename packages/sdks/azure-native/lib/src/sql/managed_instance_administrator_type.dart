/// Type of the managed instance administrator.
enum ManagedInstanceAdministratorType {
  valueActiveDirectory("ActiveDirectory");

  const ManagedInstanceAdministratorType(this.value);
  final String value;

  static ManagedInstanceAdministratorType fromValue(String value) {
    for (final item in ManagedInstanceAdministratorType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedInstanceAdministratorType value: $value');
  }
}

