import 'package:pulumi/pulumi.dart' as pulumi;

/// Ingestion source type.
enum SourceType implements pulumi.PulumiEnum<String> {
  resource("Resource");

  const SourceType(this.wireValue);
  @override
  final String wireValue;

  static SourceType fromValue(String value) {
    for (final item in SourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceType value: $value');
  }
}
