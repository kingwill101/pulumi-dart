import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Lowest threat severity that this endpoint will alert on.
enum EndpointSeverity implements pulumi.PulumiEnum<String> {
  severityUnspecified("SEVERITY_UNSPECIFIED"),
  informational("INFORMATIONAL"),
  low("LOW"),
  medium("MEDIUM"),
  high("HIGH"),
  critical("CRITICAL");

  const EndpointSeverity(this.wireValue);
  @override
  final String wireValue;

  static EndpointSeverity fromValue(String value) {
    for (final item in EndpointSeverity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointSeverity value: $value');
  }
}
