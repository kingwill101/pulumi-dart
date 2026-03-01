/// SQL Server Management type. NOTE: This parameter is not used anymore. API will automatically detect the Sql Management, refrain from using it.
enum SqlManagementMode {
  full("Full"),
  lightWeight("LightWeight"),
  noAgent("NoAgent");

  const SqlManagementMode(this.value);
  final String value;

  static SqlManagementMode fromValue(String value) {
    for (final item in SqlManagementMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlManagementMode value: $value');
  }
}

