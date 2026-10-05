import 'package:pulumi/pulumi.dart' as pulumi;

/// The VM family that all instances scheduled against this reservation must belong to.
enum AllocationAggregateReservationVmFamilyComputeBeta implements pulumi.PulumiEnum<String> {
  vmFamilyCloudTpuLiteDeviceCt5l("VM_FAMILY_CLOUD_TPU_LITE_DEVICE_CT5L"),
  vmFamilyCloudTpuLitePodSliceCt5lp("VM_FAMILY_CLOUD_TPU_LITE_POD_SLICE_CT5LP"),
  vmFamilyCloudTpuPodSliceCt4p("VM_FAMILY_CLOUD_TPU_POD_SLICE_CT4P");

  const AllocationAggregateReservationVmFamilyComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static AllocationAggregateReservationVmFamilyComputeBeta fromValue(String value) {
    for (final item in AllocationAggregateReservationVmFamilyComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllocationAggregateReservationVmFamilyComputeBeta value: $value');
  }
}
