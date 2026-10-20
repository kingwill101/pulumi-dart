import 'package:pulumi/pulumi.dart' as pulumi;

enum LoggingConfigLogActionsItem implements pulumi.PulumiEnum<String> {
  loggableActionUnspecified("LOGGABLE_ACTION_UNSPECIFIED"),
  find("FIND"),
  delete("DELETE"),
  copy("COPY");

  const LoggingConfigLogActionsItem(this.wireValue);
  @override
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
