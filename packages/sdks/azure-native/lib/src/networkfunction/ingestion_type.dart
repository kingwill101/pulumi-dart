import 'package:pulumi/pulumi.dart' as pulumi;

/// The ingestion type.
enum IngestionType implements pulumi.PulumiEnum<String> {
  iPFIX("IPFIX");

  const IngestionType(this.wireValue);
  @override
  final String wireValue;

  static IngestionType fromValue(String value) {
    for (final item in IngestionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IngestionType value: $value');
  }
}
