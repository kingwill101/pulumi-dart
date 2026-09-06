import 'package:pulumi/pulumi.dart' as pulumi;

/// The direction.
enum LoggingDirections implements pulumi.PulumiEnum<String> {
  none("None"),
  request("Request"),
  response("Response");

  const LoggingDirections(this.wireValue);
  @override
  final String wireValue;

  static LoggingDirections fromValue(String value) {
    for (final item in LoggingDirections.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingDirections value: $value');
  }
}
