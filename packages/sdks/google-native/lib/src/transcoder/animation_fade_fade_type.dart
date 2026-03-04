/// Required. Type of fade animation: `FADE_IN` or `FADE_OUT`.
enum AnimationFadeFadeType {
  fadeTypeUnspecified("FADE_TYPE_UNSPECIFIED"),
  fadeIn("FADE_IN"),
  fadeOut("FADE_OUT");

  const AnimationFadeFadeType(this.wireValue);
  final String wireValue;

  static AnimationFadeFadeType fromValue(String value) {
    for (final item in AnimationFadeFadeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AnimationFadeFadeType value: $value');
  }
}
