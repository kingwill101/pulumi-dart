/// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
enum AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface {
  nvdimm("NVDIMM"),
  nvme("NVME"),
  scsi("SCSI");

  const AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface(this.wireValue);
  final String wireValue;

  static AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface fromValue(String value) {
    for (final item in AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface value: $value');
  }
}

