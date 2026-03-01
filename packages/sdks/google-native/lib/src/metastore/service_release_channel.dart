/// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
enum ServiceReleaseChannel {
  releaseChannelUnspecified("RELEASE_CHANNEL_UNSPECIFIED"),
  canary("CANARY"),
  stable("STABLE");

  const ServiceReleaseChannel(this.value);
  final String value;

  static ServiceReleaseChannel fromValue(String value) {
    for (final item in ServiceReleaseChannel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceReleaseChannel value: $value');
  }
}

