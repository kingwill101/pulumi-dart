import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Configuration for VM IPs.
enum RuntimeEnvironmentIpConfiguration implements pulumi.PulumiEnum<String> {
  workerIpUnspecified("WORKER_IP_UNSPECIFIED"),
  workerIpPublic("WORKER_IP_PUBLIC"),
  workerIpPrivate("WORKER_IP_PRIVATE");

  const RuntimeEnvironmentIpConfiguration(this.wireValue);
  @override
  final String wireValue;

  static RuntimeEnvironmentIpConfiguration fromValue(String value) {
    for (final item in RuntimeEnvironmentIpConfiguration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuntimeEnvironmentIpConfiguration value: $value');
  }
}
