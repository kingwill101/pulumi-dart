/// Configuration for VM IPs.
enum GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentIpConfiguration {
  workerIpUnspecified("WORKER_IP_UNSPECIFIED"),
  workerIpPublic("WORKER_IP_PUBLIC"),
  workerIpPrivate("WORKER_IP_PRIVATE");

  const GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentIpConfiguration(
    this.wireValue,
  );
  final String wireValue;

  static GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentIpConfiguration
  fromValue(String value) {
    for (final item
        in GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentIpConfiguration
            .values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentIpConfiguration value: $value',
    );
  }
}
