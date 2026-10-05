import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
enum ServiceReleaseChannelMetastoreV1beta implements pulumi.PulumiEnum<String> {
  releaseChannelUnspecified("RELEASE_CHANNEL_UNSPECIFIED"),
  canary("CANARY"),
  stable("STABLE");

  const ServiceReleaseChannelMetastoreV1beta(this.wireValue);
  @override
  final String wireValue;

  static ServiceReleaseChannelMetastoreV1beta fromValue(String value) {
    for (final item in ServiceReleaseChannelMetastoreV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceReleaseChannelMetastoreV1beta value: $value');
  }
}
