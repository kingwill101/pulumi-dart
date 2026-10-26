import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of GPU sharing strategy to enable on the GPU node.
enum GPUSharingConfigGpuSharingStrategyContainerV1beta1 implements pulumi.PulumiEnum<String> {
  gpuSharingStrategyUnspecified("GPU_SHARING_STRATEGY_UNSPECIFIED"),
  timeSharing("TIME_SHARING");

  const GPUSharingConfigGpuSharingStrategyContainerV1beta1(this.wireValue);
  @override
  final String wireValue;

  static GPUSharingConfigGpuSharingStrategyContainerV1beta1 fromValue(String value) {
    for (final item in GPUSharingConfigGpuSharingStrategyContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GPUSharingConfigGpuSharingStrategyContainerV1beta1 value: $value');
  }
}
