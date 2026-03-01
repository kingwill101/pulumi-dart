/// The VM family that all instances scheduled against this reservation must belong to.
enum AllocationAggregateReservationVmFamily {
  vmFamilyCloudTpuLiteDeviceCt5l("VM_FAMILY_CLOUD_TPU_LITE_DEVICE_CT5L"),
  vmFamilyCloudTpuLitePodSliceCt5lp("VM_FAMILY_CLOUD_TPU_LITE_POD_SLICE_CT5LP"),
  vmFamilyCloudTpuPodSliceCt4p("VM_FAMILY_CLOUD_TPU_POD_SLICE_CT4P");

  const AllocationAggregateReservationVmFamily(this.value);
  final String value;

  static AllocationAggregateReservationVmFamily fromValue(String value) {
    for (final item in AllocationAggregateReservationVmFamily.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllocationAggregateReservationVmFamily value: $value');
  }
}

