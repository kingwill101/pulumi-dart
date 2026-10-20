import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Type of fade animation: `FADE_IN` or `FADE_OUT`.
enum AnimationFadeFadeType implements pulumi.PulumiEnum<String> {
  fadeTypeUnspecified("FADE_TYPE_UNSPECIFIED"),
  fadeIn("FADE_IN"),
  fadeOut("FADE_OUT");

  const AnimationFadeFadeType(this.wireValue);
  @override
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
