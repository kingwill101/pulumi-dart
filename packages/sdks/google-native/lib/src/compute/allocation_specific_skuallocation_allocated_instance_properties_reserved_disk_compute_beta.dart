// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_specific_skuallocation_allocated_instance_properties_reserved_disk_interface_compute_beta.dart';

class AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeBeta {
  /// Specifies the size of the disk in base-2 GB.
  final pulumi.Input<String>? diskSizeGb;
  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
  final pulumi.Input<AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeBeta>? interface;

  /// Creates a new [AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeBeta].
  /// [diskSizeGb] Specifies the size of the disk in base-2 GB.
  /// [interface] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
  const AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeBeta({
    this.diskSizeGb,
    this.interface,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': ?diskSizeGb,
      'interface': ?pulumi.Input.mapOptionalInputValue<AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeBeta, String>(interface, (value) => value.wireValue),
    };
  }

  factory AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeBeta.fromMap(Map<String, dynamic> map) {
    return AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeBeta(
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interface: (() { final guardedValue = map['interface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeBeta.fromValue(guardedValue as String)); })(),
    );
  }
}
