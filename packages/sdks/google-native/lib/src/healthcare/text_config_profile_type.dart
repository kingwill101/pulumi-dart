/// Base profile type for text transformation.
enum TextConfigProfileType {
  profileTypeUnspecified("PROFILE_TYPE_UNSPECIFIED"),
  empty("EMPTY"),
  basic("BASIC");

  const TextConfigProfileType(this.wireValue);
  final String wireValue;

  static TextConfigProfileType fromValue(String value) {
    for (final item in TextConfigProfileType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TextConfigProfileType value: $value');
  }
}
