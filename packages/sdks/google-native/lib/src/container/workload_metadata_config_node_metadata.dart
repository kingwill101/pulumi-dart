/// NodeMetadata is the configuration for how to expose metadata to the workloads running on the node.
enum WorkloadMetadataConfigNodeMetadata {
  unspecified("UNSPECIFIED"),
  secure("SECURE"),
  expose("EXPOSE"),
  gkeMetadataServer("GKE_METADATA_SERVER");

  const WorkloadMetadataConfigNodeMetadata(this.wireValue);
  final String wireValue;

  static WorkloadMetadataConfigNodeMetadata fromValue(String value) {
    for (final item in WorkloadMetadataConfigNodeMetadata.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadMetadataConfigNodeMetadata value: $value');
  }
}
