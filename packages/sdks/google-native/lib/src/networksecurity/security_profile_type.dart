import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The single ProfileType that the SecurityProfile resource configures.
enum SecurityProfileType implements pulumi.PulumiEnum<String> {
  profileTypeUnspecified("PROFILE_TYPE_UNSPECIFIED"),
  threatPrevention("THREAT_PREVENTION");

  const SecurityProfileType(this.wireValue);
  @override
  final String wireValue;

  static SecurityProfileType fromValue(String value) {
    for (final item in SecurityProfileType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityProfileType value: $value');
  }
}
