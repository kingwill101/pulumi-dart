import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode is the configuration for how to expose metadata to workloads running on the node pool.
enum WorkloadMetadataConfigMode implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  gceMetadata("GCE_METADATA"),
  gkeMetadata("GKE_METADATA");

  const WorkloadMetadataConfigMode(this.wireValue);
  @override
  final String wireValue;

  static WorkloadMetadataConfigMode fromValue(String value) {
    for (final item in WorkloadMetadataConfigMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadMetadataConfigMode value: $value');
  }
}
