/// Compute type of the cluster which will execute data flow job.
enum DataFlowComputeType {
  valueGeneral("General"),
  valueMemoryOptimized("MemoryOptimized"),
  valueComputeOptimized("ComputeOptimized");

  const DataFlowComputeType(this.value);
  final String value;

  static DataFlowComputeType fromValue(String value) {
    for (final item in DataFlowComputeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataFlowComputeType value: $value');
  }
}

