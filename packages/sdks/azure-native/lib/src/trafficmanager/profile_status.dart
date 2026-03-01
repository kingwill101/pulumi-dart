/// The status of the Traffic Manager profile.
enum ProfileStatus {
  enabled("Enabled"),
  disabled("Disabled");

  const ProfileStatus(this.value);
  final String value;

  static ProfileStatus fromValue(String value) {
    for (final item in ProfileStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProfileStatus value: $value');
  }
}

