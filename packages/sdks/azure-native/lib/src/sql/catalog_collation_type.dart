import 'package:pulumi/pulumi.dart' as pulumi;

/// Collation of the metadata catalog.
enum CatalogCollationType implements pulumi.PulumiEnum<String> {
  valueDATABASEDEFAULT("DATABASE_DEFAULT"),
  valueSQLLatin1GeneralCP1CIAS("SQL_Latin1_General_CP1_CI_AS");

  const CatalogCollationType(this.wireValue);
  @override
  final String wireValue;

  static CatalogCollationType fromValue(String value) {
    for (final item in CatalogCollationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CatalogCollationType value: $value');
  }
}
