/// Optional. Various policies for how to persist the test execution info including execution info, execution export info, execution metadata index and execution param index..
enum TestCaseDatabasePersistencePolicy {
  databasePersistencePolicyUnspecified(
    "DATABASE_PERSISTENCE_POLICY_UNSPECIFIED",
  ),
  databasePersistenceDisabled("DATABASE_PERSISTENCE_DISABLED"),
  databasePersistenceAsync("DATABASE_PERSISTENCE_ASYNC");

  const TestCaseDatabasePersistencePolicy(this.wireValue);
  final String wireValue;

  static TestCaseDatabasePersistencePolicy fromValue(String value) {
    for (final item in TestCaseDatabasePersistencePolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown TestCaseDatabasePersistencePolicy value: $value',
    );
  }
}
