/// Mode is the configuration for how to expose metadata to workloads running on the node pool.
enum WorkloadMetadataConfigModeContainerV1beta1 {
  modeUnspecified("MODE_UNSPECIFIED"),
  gceMetadata("GCE_METADATA"),
  gkeMetadata("GKE_METADATA");

  const WorkloadMetadataConfigModeContainerV1beta1(this.wireValue);
  final String wireValue;

  static WorkloadMetadataConfigModeContainerV1beta1 fromValue(String value) {
    for (final item in WorkloadMetadataConfigModeContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown WorkloadMetadataConfigModeContainerV1beta1 value: $value',
    );
  }
}
