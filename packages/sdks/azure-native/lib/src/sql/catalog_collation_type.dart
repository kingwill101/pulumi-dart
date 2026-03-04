/// Collation of the metadata catalog.
enum CatalogCollationType {
  valueDATABASEDEFAULT("DATABASE_DEFAULT"),
  valueSQLLatin1GeneralCP1CIAS("SQL_Latin1_General_CP1_CI_AS");

  const CatalogCollationType(this.wireValue);
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
