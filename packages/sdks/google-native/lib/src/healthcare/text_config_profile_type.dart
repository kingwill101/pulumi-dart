import 'package:pulumi/pulumi.dart' as pulumi;

/// Base profile type for text transformation.
enum TextConfigProfileType implements pulumi.PulumiEnum<String> {
  profileTypeUnspecified("PROFILE_TYPE_UNSPECIFIED"),
  empty("EMPTY"),
  basic("BASIC");

  const TextConfigProfileType(this.wireValue);
  @override
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
