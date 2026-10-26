import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Profile which tells what the primitive action should be.
enum RuleBasicProfileNetworksecurityV1beta1 implements pulumi.PulumiEnum<String> {
  basicProfileUnspecified("BASIC_PROFILE_UNSPECIFIED"),
  allow("ALLOW"),
  deny("DENY");

  const RuleBasicProfileNetworksecurityV1beta1(this.wireValue);
  @override
  final String wireValue;

  static RuleBasicProfileNetworksecurityV1beta1 fromValue(String value) {
    for (final item in RuleBasicProfileNetworksecurityV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleBasicProfileNetworksecurityV1beta1 value: $value');
  }
}
