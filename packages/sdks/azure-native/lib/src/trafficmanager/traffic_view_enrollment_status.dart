import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether Traffic View is 'Enabled' or 'Disabled' for the Traffic Manager profile. Null, indicates 'Disabled'. Enabling this feature will increase the cost of the Traffic Manage profile.
enum TrafficViewEnrollmentStatus implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const TrafficViewEnrollmentStatus(this.wireValue);
  @override
  final String wireValue;

  static TrafficViewEnrollmentStatus fromValue(String value) {
    for (final item in TrafficViewEnrollmentStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrafficViewEnrollmentStatus value: $value');
  }
}
