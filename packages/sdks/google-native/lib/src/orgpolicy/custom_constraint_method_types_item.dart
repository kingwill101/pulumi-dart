import 'package:pulumi/pulumi.dart' as pulumi;

enum CustomConstraintMethodTypesItem implements pulumi.PulumiEnum<String> {
  methodTypeUnspecified("METHOD_TYPE_UNSPECIFIED"),
  create("CREATE"),
  update("UPDATE"),
  delete("DELETE");

  const CustomConstraintMethodTypesItem(this.wireValue);
  @override
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
