/// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
enum ServiceReleaseChannelMetastoreV1alpha {
  releaseChannelUnspecified("RELEASE_CHANNEL_UNSPECIFIED"),
  canary("CANARY"),
  stable("STABLE");

  const ServiceReleaseChannelMetastoreV1alpha(this.value);
  final String value;

  static ServiceReleaseChannelMetastoreV1alpha fromValue(String value) {
    for (final item in ServiceReleaseChannelMetastoreV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceReleaseChannelMetastoreV1alpha value: $value');
  }
}

