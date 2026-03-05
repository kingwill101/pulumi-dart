/// The status of the Traffic Manager profile.
enum ProfileStatus {
  enabled("Enabled"),
  disabled("Disabled");

  const ProfileStatus(this.wireValue);
  final String wireValue;

  static ProfileStatus fromValue(String value) {
    for (final item in ProfileStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProfileStatus value: $value');
  }
}

