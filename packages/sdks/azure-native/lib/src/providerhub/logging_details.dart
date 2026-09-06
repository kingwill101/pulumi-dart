import 'package:pulumi/pulumi.dart' as pulumi;

/// The detail level.
enum LoggingDetails implements pulumi.PulumiEnum<String> {
  none("None"),
  body("Body");

  const LoggingDetails(this.wireValue);
  @override
  final String wireValue;

  static LoggingDetails fromValue(String value) {
    for (final item in LoggingDetails.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingDetails value: $value');
  }
}
