import 'package:pulumi/pulumi.dart' as pulumi;

/// This is a required field. This field specifies the scope of the inventory created either at the blob or container level.
enum ObjectType implements pulumi.PulumiEnum<String> {
  valueBlob("Blob"),
  valueContainer("Container");

  const ObjectType(this.wireValue);
  @override
  final String wireValue;

  static ObjectType fromValue(String value) {
    for (final item in ObjectType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ObjectType value: $value');
  }
}
