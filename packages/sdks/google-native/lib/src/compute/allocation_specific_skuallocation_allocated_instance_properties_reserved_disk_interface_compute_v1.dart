/// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
enum AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeV1 {
  nvme("NVME"),
  scsi("SCSI");

  const AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeV1(this.wireValue);
  final String wireValue;

  static AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeV1 fromValue(String value) {
    for (final item in AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeV1 value: $value');
  }
}

