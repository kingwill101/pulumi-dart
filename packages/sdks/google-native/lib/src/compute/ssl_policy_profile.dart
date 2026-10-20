import 'package:pulumi/pulumi.dart' as pulumi;

/// Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to enable must be specified in the customFeatures field.
enum SslPolicyProfile implements pulumi.PulumiEnum<String> {
  compatible("COMPATIBLE"),
  custom("CUSTOM"),
  modern("MODERN"),
  restricted("RESTRICTED");

  const SslPolicyProfile(this.wireValue);
  @override
  final String wireValue;

  static SslPolicyProfile fromValue(String value) {
    for (final item in SslPolicyProfile.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslPolicyProfile value: $value');
  }
}
