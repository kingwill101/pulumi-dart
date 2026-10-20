import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
enum ServiceReleaseChannel implements pulumi.PulumiEnum<String> {
  releaseChannelUnspecified("RELEASE_CHANNEL_UNSPECIFIED"),
  canary("CANARY"),
  stable("STABLE");

  const ServiceReleaseChannel(this.wireValue);
  @override
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
