/// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
enum ServiceReleaseChannel {
  releaseChannelUnspecified("RELEASE_CHANNEL_UNSPECIFIED"),
  canary("CANARY"),
  stable("STABLE");

  const ServiceReleaseChannel(this.wireValue);
  final String wireValue;

  static ServiceReleaseChannel fromValue(String value) {
    for (final item in ServiceReleaseChannel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceReleaseChannel value: $value');
  }
}

