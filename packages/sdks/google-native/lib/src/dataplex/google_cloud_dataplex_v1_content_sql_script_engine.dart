/// Required. Query Engine to be used for the Sql Query.
enum GoogleCloudDataplexV1ContentSqlScriptEngine {
  queryEngineUnspecified("QUERY_ENGINE_UNSPECIFIED"),
  spark("SPARK");

  const GoogleCloudDataplexV1ContentSqlScriptEngine(this.wireValue);
  final String wireValue;

  static GoogleCloudDataplexV1ContentSqlScriptEngine fromValue(String value) {
    for (final item in GoogleCloudDataplexV1ContentSqlScriptEngine.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudDataplexV1ContentSqlScriptEngine value: $value',
    );
  }
}
