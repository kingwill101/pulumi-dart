import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for VM IPs.
enum WorkerPoolIpConfiguration implements pulumi.PulumiEnum<String> {
  workerIpUnspecified("WORKER_IP_UNSPECIFIED"),
  workerIpPublic("WORKER_IP_PUBLIC"),
  workerIpPrivate("WORKER_IP_PRIVATE");

  const WorkerPoolIpConfiguration(this.wireValue);
  @override
  final String wireValue;

  static WorkerPoolIpConfiguration fromValue(String value) {
    for (final item in WorkerPoolIpConfiguration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkerPoolIpConfiguration value: $value');
  }
}
