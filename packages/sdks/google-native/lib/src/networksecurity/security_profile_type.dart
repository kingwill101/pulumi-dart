/// Immutable. The single ProfileType that the SecurityProfile resource configures.
enum SecurityProfileType {
  profileTypeUnspecified("PROFILE_TYPE_UNSPECIFIED"),
  threatPrevention("THREAT_PREVENTION");

  const SecurityProfileType(this.value);
  final String value;

  static SecurityProfileType fromValue(String value) {
    for (final item in SecurityProfileType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityProfileType value: $value');
  }
}

