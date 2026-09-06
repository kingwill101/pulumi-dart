import 'package:pulumi/pulumi.dart' as pulumi;

/// Unmasked IP address logging status
enum UnmaskedIpLoggingStatus implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const UnmaskedIpLoggingStatus(this.wireValue);
  @override
  final String wireValue;

  static UnmaskedIpLoggingStatus fromValue(String value) {
    for (final item in UnmaskedIpLoggingStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UnmaskedIpLoggingStatus value: $value');
  }
}
