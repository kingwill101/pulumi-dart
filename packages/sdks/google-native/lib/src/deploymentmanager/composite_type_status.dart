enum CompositeTypeStatus {
  unknownStatus("UNKNOWN_STATUS"),
  deprecated("DEPRECATED"),
  experimental("EXPERIMENTAL"),
  supported("SUPPORTED");

  const CompositeTypeStatus(this.wireValue);
  final String wireValue;

  static CompositeTypeStatus fromValue(String value) {
    for (final item in CompositeTypeStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompositeTypeStatus value: $value');
  }
}
