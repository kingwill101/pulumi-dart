import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource access policy.
enum ResourceAccessPolicy implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueAcisReadAllowed("AcisReadAllowed"),
  valueAcisActionAllowed("AcisActionAllowed");

  const ResourceAccessPolicy(this.wireValue);
  @override
  final String wireValue;

  static ResourceAccessPolicy fromValue(String value) {
    for (final item in ResourceAccessPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceAccessPolicy value: $value');
  }
}
