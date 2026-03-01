/// Indicates whether to clean up previous operation when Linker is updating or deleting
enum DeleteOrUpdateBehavior {
  valueDefault("Default"),
  valueForcedCleanup("ForcedCleanup");

  const DeleteOrUpdateBehavior(this.value);
  final String value;

  static DeleteOrUpdateBehavior fromValue(String value) {
    for (final item in DeleteOrUpdateBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeleteOrUpdateBehavior value: $value');
  }
}

