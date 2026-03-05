/// The type of the owner the incident is assigned to.
enum OwnerType {
  valueUnknown("Unknown"),
  valueUser("User"),
  valueGroup("Group");

  const OwnerType(this.wireValue);
  final String wireValue;

  static OwnerType fromValue(String value) {
    for (final item in OwnerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OwnerType value: $value');
  }
}

