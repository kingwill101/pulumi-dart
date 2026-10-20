import 'package:pulumi/pulumi.dart' as pulumi;

enum LoggingConfigLogActionStatesItem implements pulumi.PulumiEnum<String> {
  loggableActionStateUnspecified("LOGGABLE_ACTION_STATE_UNSPECIFIED"),
  succeeded("SUCCEEDED"),
  failed("FAILED");

  const LoggingConfigLogActionStatesItem(this.wireValue);
  @override
  final String wireValue;

  static LoggingConfigLogActionStatesItem fromValue(String value) {
    for (final item in LoggingConfigLogActionStatesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingConfigLogActionStatesItem value: $value');
  }
}
