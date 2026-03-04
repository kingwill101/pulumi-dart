/// Indicates whether to clean up previous operation when Linker is updating or deleting
enum DeleteOrUpdateBehavior {
  valueDefault("Default"),
  valueForcedCleanup("ForcedCleanup");

  const DeleteOrUpdateBehavior(this.wireValue);
  final String wireValue;

  static DeleteOrUpdateBehavior fromValue(String value) {
    for (final item in DeleteOrUpdateBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeleteOrUpdateBehavior value: $value');
  }
}
