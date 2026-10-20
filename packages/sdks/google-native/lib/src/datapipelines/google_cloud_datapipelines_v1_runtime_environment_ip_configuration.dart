import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for VM IPs.
enum GoogleCloudDatapipelinesV1RuntimeEnvironmentIpConfiguration implements pulumi.PulumiEnum<String> {
  workerIpUnspecified("WORKER_IP_UNSPECIFIED"),
  workerIpPublic("WORKER_IP_PUBLIC"),
  workerIpPrivate("WORKER_IP_PRIVATE");

  const GoogleCloudDatapipelinesV1RuntimeEnvironmentIpConfiguration(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDatapipelinesV1RuntimeEnvironmentIpConfiguration fromValue(String value) {
    for (final item in GoogleCloudDatapipelinesV1RuntimeEnvironmentIpConfiguration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDatapipelinesV1RuntimeEnvironmentIpConfiguration value: $value');
  }
}
