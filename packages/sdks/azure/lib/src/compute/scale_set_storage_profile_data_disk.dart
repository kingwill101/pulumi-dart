// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScaleSetStorageProfileDataDisk {
  /// Specifies the caching requirements. Possible values include: `None` (default), `ReadOnly`, `ReadWrite`.
  final pulumi.Input<String>? caching;
  /// Specifies how the data disk should be created. The only possible options are `FromImage` and `Empty`.
  final pulumi.Input<String> createOption;
  /// Specifies the size of the disk in GB. This element is required when creating an empty disk.
  final pulumi.Input<int>? diskSizeGb;
  /// Specifies the Logical Unit Number of the disk in each virtual machine in the scale set.
  final pulumi.Input<int> lun;
  /// Specifies the type of managed disk to create. Value must be either `Standard_LRS`, `StandardSSD_LRS` or `Premium_LRS`.
  final pulumi.Input<String>? managedDiskType;

  /// Creates a new [ScaleSetStorageProfileDataDisk].
  /// [caching] Specifies the caching requirements. Possible values include: `None` (default), `ReadOnly`, `ReadWrite`.
  /// [createOption] Specifies how the data disk should be created. The only possible options are `FromImage` and `Empty`.
  /// [diskSizeGb] Specifies the size of the disk in GB. This element is required when creating an empty disk.
  /// [lun] Specifies the Logical Unit Number of the disk in each virtual machine in the scale set.
  /// [managedDiskType] Specifies the type of managed disk to create. Value must be either `Standard_LRS`, `StandardSSD_LRS` or `Premium_LRS`.
  ScaleSetStorageProfileDataDisk({
    this.caching,
    required this.createOption,
    this.diskSizeGb,
    required this.lun,
    this.managedDiskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': ?caching,
      'createOption': createOption,
      'diskSizeGb': ?diskSizeGb,
      'lun': lun,
      'managedDiskType': ?managedDiskType,
    };
  }

  factory ScaleSetStorageProfileDataDisk.fromMap(Map<String, dynamic> map) {
    return ScaleSetStorageProfileDataDisk(
      caching: (() { final guardedValue = map['caching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createOption: pulumi.Input.fromValue(map['createOption'] as String),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lun: pulumi.Input.fromValue(map['lun'] as int),
      managedDiskType: (() { final guardedValue = map['managedDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

