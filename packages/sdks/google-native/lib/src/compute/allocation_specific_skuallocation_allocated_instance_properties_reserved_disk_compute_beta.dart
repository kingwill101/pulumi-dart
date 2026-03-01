// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_specific_skuallocation_allocated_instance_properties_reserved_disk_interface_compute_beta.dart';

class AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeBeta {
  /// Specifies the size of the disk in base-2 GB.
  final String? diskSizeGb;
  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
  final AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeBeta? interface;

  /// Creates a new [AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeBeta].
  /// [diskSizeGb] Specifies the size of the disk in base-2 GB.
  /// [interface] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
  AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeBeta({
    this.diskSizeGb,
    this.interface,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': ?diskSizeGb,
      'interface': ?interface == null ? null : interface!.value,
    };
  }

  factory AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeBeta.fromMap(Map<String, dynamic> map) {
    return AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeBeta(
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as String,
      interface: map['interface'] == null ? null : AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeBeta.fromValue(map['interface'] as String),
    );
  }
}

