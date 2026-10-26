import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
enum ServiceReleaseChannelMetastoreV1alpha implements pulumi.PulumiEnum<String> {
  releaseChannelUnspecified("RELEASE_CHANNEL_UNSPECIFIED"),
  canary("CANARY"),
  stable("STABLE");

  const ServiceReleaseChannelMetastoreV1alpha(this.wireValue);
  @override
  final String wireValue;

  static ServiceReleaseChannelMetastoreV1alpha fromValue(String value) {
    for (final item in ServiceReleaseChannelMetastoreV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceReleaseChannelMetastoreV1alpha value: $value');
  }
}
