/// The managed application lock level.
enum ApplicationLockLevel {
  valueCanNotDelete("CanNotDelete"),
  valueReadOnly("ReadOnly"),
  valueNone("None");

  const ApplicationLockLevel(this.wireValue);
  final String wireValue;

  static ApplicationLockLevel fromValue(String value) {
    for (final item in ApplicationLockLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationLockLevel value: $value');
  }
}
