import 'package:pulumi/pulumi.dart' as pulumi;

/// The database type.
enum SAPDatabaseType implements pulumi.PulumiEnum<String> {
  hANA("HANA"),
  dB2("DB2");

  const SAPDatabaseType(this.wireValue);
  @override
  final String wireValue;

  static SAPDatabaseType fromValue(String value) {
    for (final item in SAPDatabaseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPDatabaseType value: $value');
  }
}
