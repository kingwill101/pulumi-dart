/// The App Engine integration mode to use for this database.
enum DatabaseAppEngineIntegrationMode {
  appEngineIntegrationModeUnspecified("APP_ENGINE_INTEGRATION_MODE_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED");

  const DatabaseAppEngineIntegrationMode(this.wireValue);
  final String wireValue;

  static DatabaseAppEngineIntegrationMode fromValue(String value) {
    for (final item in DatabaseAppEngineIntegrationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseAppEngineIntegrationMode value: $value');
  }
}
