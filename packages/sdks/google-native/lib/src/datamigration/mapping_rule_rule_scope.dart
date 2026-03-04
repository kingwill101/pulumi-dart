/// Required. The rule scope
enum MappingRuleRuleScope {
  databaseEntityTypeUnspecified("DATABASE_ENTITY_TYPE_UNSPECIFIED"),
  databaseEntityTypeSchema("DATABASE_ENTITY_TYPE_SCHEMA"),
  databaseEntityTypeTable("DATABASE_ENTITY_TYPE_TABLE"),
  databaseEntityTypeColumn("DATABASE_ENTITY_TYPE_COLUMN"),
  databaseEntityTypeConstraint("DATABASE_ENTITY_TYPE_CONSTRAINT"),
  databaseEntityTypeIndex("DATABASE_ENTITY_TYPE_INDEX"),
  databaseEntityTypeTrigger("DATABASE_ENTITY_TYPE_TRIGGER"),
  databaseEntityTypeView("DATABASE_ENTITY_TYPE_VIEW"),
  databaseEntityTypeSequence("DATABASE_ENTITY_TYPE_SEQUENCE"),
  databaseEntityTypeStoredProcedure("DATABASE_ENTITY_TYPE_STORED_PROCEDURE"),
  databaseEntityTypeFunction("DATABASE_ENTITY_TYPE_FUNCTION"),
  databaseEntityTypeSynonym("DATABASE_ENTITY_TYPE_SYNONYM"),
  databaseEntityTypeDatabasePackage("DATABASE_ENTITY_TYPE_DATABASE_PACKAGE"),
  databaseEntityTypeUdt("DATABASE_ENTITY_TYPE_UDT"),
  databaseEntityTypeMaterializedView("DATABASE_ENTITY_TYPE_MATERIALIZED_VIEW"),
  databaseEntityTypeDatabase("DATABASE_ENTITY_TYPE_DATABASE");

  const MappingRuleRuleScope(this.wireValue);
  final String wireValue;

  static MappingRuleRuleScope fromValue(String value) {
    for (final item in MappingRuleRuleScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MappingRuleRuleScope value: $value');
  }
}
