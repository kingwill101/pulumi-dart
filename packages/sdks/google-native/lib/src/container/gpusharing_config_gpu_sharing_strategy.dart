import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of GPU sharing strategy to enable on the GPU node.
enum GPUSharingConfigGpuSharingStrategy implements pulumi.PulumiEnum<String> {
  gpuSharingStrategyUnspecified("GPU_SHARING_STRATEGY_UNSPECIFIED"),
  timeSharing("TIME_SHARING");

  const GPUSharingConfigGpuSharingStrategy(this.wireValue);
  @override
  final String wireValue;

  static GPUSharingConfigGpuSharingStrategy fromValue(String value) {
    for (final item in GPUSharingConfigGpuSharingStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GPUSharingConfigGpuSharingStrategy value: $value');
  }
}
