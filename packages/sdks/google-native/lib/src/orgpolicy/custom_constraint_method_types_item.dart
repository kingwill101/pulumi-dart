enum CustomConstraintMethodTypesItem {
  methodTypeUnspecified("METHOD_TYPE_UNSPECIFIED"),
  create("CREATE"),
  update("UPDATE"),
  delete("DELETE");

  const CustomConstraintMethodTypesItem(this.wireValue);
  final String wireValue;

  static CustomConstraintMethodTypesItem fromValue(String value) {
    for (final item in CustomConstraintMethodTypesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomConstraintMethodTypesItem value: $value');
  }
}

