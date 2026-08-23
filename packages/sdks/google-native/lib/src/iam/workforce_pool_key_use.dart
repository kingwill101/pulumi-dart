/// Required. The purpose of the key.
enum WorkforcePoolKeyUse {
  keyUseUnspecified("KEY_USE_UNSPECIFIED"),
  encryption("ENCRYPTION");

  const WorkforcePoolKeyUse(this.wireValue);
  final String wireValue;

  static WorkforcePoolKeyUse fromValue(String value) {
    for (final item in WorkforcePoolKeyUse.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkforcePoolKeyUse value: $value');
  }
}
