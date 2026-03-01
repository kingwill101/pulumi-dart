/// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
enum AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeBeta {
  nvme("NVME"),
  scsi("SCSI");

  const AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeBeta(this.value);
  final String value;

  static AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeBeta fromValue(String value) {
    for (final item in AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeBeta value: $value');
  }
}

