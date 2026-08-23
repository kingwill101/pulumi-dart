/// Type of action to be taken. Supported types are 'Remove', 'Add', 'Replace', and 'Drop.'
enum RouteMapActionType {
  valueUnknown("Unknown"),
  valueRemove("Remove"),
  valueAdd("Add"),
  valueReplace("Replace"),
  valueDrop("Drop");

  const RouteMapActionType(this.wireValue);
  final String wireValue;

  static RouteMapActionType fromValue(String value) {
    for (final item in RouteMapActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouteMapActionType value: $value');
  }
}
