import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
enum AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeBeta implements pulumi.PulumiEnum<String> {
  nvme("NVME"),
  scsi("SCSI");

  const AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeBeta fromValue(String value) {
    for (final item in AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeBeta value: $value');
  }
}
