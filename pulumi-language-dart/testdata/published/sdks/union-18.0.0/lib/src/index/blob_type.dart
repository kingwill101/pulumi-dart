import 'package:pulumi/pulumi.dart' as pulumi;

enum BlobType implements pulumi.PulumiEnum<String> {
  valueBlock("Block"),
  valueAppend("Append"),
  valuePage("Page");

  const BlobType(this.wireValue);
  @override
  final String wireValue;

  static BlobType fromValue(String value) {
    for (final item in BlobType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BlobType value: $value');
  }
}
