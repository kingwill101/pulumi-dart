// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed data disk description.
class VmssDataDiskResponse {
  /// Managed data disk letter. It can not use the reserved letter C or D and it can not change after created.
  final pulumi.Input<String> diskLetter;
  /// Disk size for each vm in the node type in GBs.
  final pulumi.Input<int> diskSizeGB;
  /// Managed data disk type. Specifies the storage account type for the managed disk
  final pulumi.Input<String> diskType;
  /// Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM. Lun 0 is reserved for the service fabric data disk.
  final pulumi.Input<int> lun;

  /// Creates a new [VmssDataDiskResponse].
  /// [diskLetter] Managed data disk letter. It can not use the reserved letter C or D and it can not change after created.
  /// [diskSizeGB] Disk size for each vm in the node type in GBs.
  /// [diskType] Managed data disk type. Specifies the storage account type for the managed disk
  /// [lun] Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM. Lun 0 is reserved for the service fabric data disk.
  VmssDataDiskResponse({
    required this.diskLetter,
    required this.diskSizeGB,
    required this.diskType,
    required this.lun,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskLetter': diskLetter,
      'diskSizeGB': diskSizeGB,
      'diskType': diskType,
      'lun': lun,
    };
  }

  factory VmssDataDiskResponse.fromMap(Map<String, dynamic> map) {
    return VmssDataDiskResponse(
      diskLetter: pulumi.Input.fromValue(map['diskLetter'] as String),
      diskSizeGB: pulumi.Input.fromValue(map['diskSizeGB'] as int),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      lun: pulumi.Input.fromValue(map['lun'] as int),
    );
  }
}

