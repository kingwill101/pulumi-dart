import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of action to be taken. Supported types are 'Remove', 'Add', 'Replace', and 'Drop.'
enum RouteMapActionType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueRemove("Remove"),
  valueAdd("Add"),
  valueReplace("Replace"),
  valueDrop("Drop");

  const RouteMapActionType(this.wireValue);
  @override
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
