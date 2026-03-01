/// The profile-level monitoring status of the Traffic Manager profile.
enum ProfileMonitorStatus {
  checkingEndpoints("CheckingEndpoints"),
  online("Online"),
  degraded("Degraded"),
  disabled("Disabled"),
  inactive("Inactive");

  const ProfileMonitorStatus(this.value);
  final String value;

  static ProfileMonitorStatus fromValue(String value) {
    for (final item in ProfileMonitorStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProfileMonitorStatus value: $value');
  }
}

