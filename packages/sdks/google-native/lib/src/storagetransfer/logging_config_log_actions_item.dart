enum LoggingConfigLogActionsItem {
  loggableActionUnspecified("LOGGABLE_ACTION_UNSPECIFIED"),
  find("FIND"),
  delete("DELETE"),
  copy("COPY");

  const LoggingConfigLogActionsItem(this.wireValue);
  final String wireValue;

  static LoggingConfigLogActionsItem fromValue(String value) {
    for (final item in LoggingConfigLogActionsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingConfigLogActionsItem value: $value');
  }
}

