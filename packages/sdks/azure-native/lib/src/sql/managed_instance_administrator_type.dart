/// Type of the managed instance administrator.
enum ManagedInstanceAdministratorType {
  valueActiveDirectory("ActiveDirectory");

  const ManagedInstanceAdministratorType(this.wireValue);
  final String wireValue;

  static ManagedInstanceAdministratorType fromValue(String value) {
    for (final item in ManagedInstanceAdministratorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedInstanceAdministratorType value: $value');
  }
}

