import 'package:pulumi/pulumi.dart' as pulumi;

/// The profile-level monitoring status of the Traffic Manager profile.
enum ProfileMonitorStatus implements pulumi.PulumiEnum<String> {
  checkingEndpoints("CheckingEndpoints"),
  online("Online"),
  degraded("Degraded"),
  disabled("Disabled"),
  inactive("Inactive");

  const ProfileMonitorStatus(this.wireValue);
  @override
  final String wireValue;

  static ProfileMonitorStatus fromValue(String value) {
    for (final item in ProfileMonitorStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProfileMonitorStatus value: $value');
  }
}
