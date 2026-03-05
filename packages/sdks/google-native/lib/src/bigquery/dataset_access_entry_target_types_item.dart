enum DatasetAccessEntryTargetTypesItem {
  targetTypeUnspecified("TARGET_TYPE_UNSPECIFIED"),
  views("VIEWS"),
  routines("ROUTINES");

  const DatasetAccessEntryTargetTypesItem(this.wireValue);
  final String wireValue;

  static DatasetAccessEntryTargetTypesItem fromValue(String value) {
    for (final item in DatasetAccessEntryTargetTypesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatasetAccessEntryTargetTypesItem value: $value');
  }
}

