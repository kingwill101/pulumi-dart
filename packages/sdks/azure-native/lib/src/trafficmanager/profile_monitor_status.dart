/// The profile-level monitoring status of the Traffic Manager profile.
enum ProfileMonitorStatus {
  checkingEndpoints("CheckingEndpoints"),
  online("Online"),
  degraded("Degraded"),
  disabled("Disabled"),
  inactive("Inactive");

  const ProfileMonitorStatus(this.wireValue);
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

