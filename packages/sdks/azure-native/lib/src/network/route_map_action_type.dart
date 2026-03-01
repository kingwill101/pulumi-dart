/// Type of action to be taken. Supported types are 'Remove', 'Add', 'Replace', and 'Drop.'
enum RouteMapActionType {
  valueUnknown("Unknown"),
  valueRemove("Remove"),
  valueAdd("Add"),
  valueReplace("Replace"),
  valueDrop("Drop");

  const RouteMapActionType(this.value);
  final String value;

  static RouteMapActionType fromValue(String value) {
    for (final item in RouteMapActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouteMapActionType value: $value');
  }
}

