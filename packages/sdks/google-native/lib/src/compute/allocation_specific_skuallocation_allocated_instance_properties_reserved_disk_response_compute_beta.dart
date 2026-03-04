// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeBeta {
  /// Specifies the size of the disk in base-2 GB.
  final pulumi.Input<String> diskSizeGb;

  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
  final pulumi.Input<String> interface;

  /// Creates a new [AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeBeta].
  /// [diskSizeGb] Specifies the size of the disk in base-2 GB.
  /// [interface] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
  AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeBeta({
    required this.diskSizeGb,
    required this.interface,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'diskSizeGb': diskSizeGb, 'interface': interface};
  }

  factory AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeBeta(
      diskSizeGb: pulumi.Input.fromValue(map['diskSizeGb'] as String),
      interface: pulumi.Input.fromValue(map['interface'] as String),
    );
  }
}
