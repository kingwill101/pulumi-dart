// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolDataDisk {
  /// Values are: "none" - The caching mode for the disk is not enabled. "readOnly" - The caching mode for the disk is read only. "readWrite" - The caching mode for the disk is read and write. For information about the caching options see: <https://blogs.msdn.microsoft.com/windowsazurestorage/2012/06/27/exploring-windows-azure-drives-disks-and-images/>. Possible values are `None`, `ReadOnly` and `ReadWrite`. Defaults to `ReadOnly`.
  final pulumi.Input<String>? caching;
  /// The initial disk size in GB when creating new data disk.
  final pulumi.Input<int> diskSizeGb;
  /// The lun is used to uniquely identify each data disk. If attaching multiple disks, each should have a distinct lun. The value must be between 0 and 63, inclusive.
  final pulumi.Input<int> lun;
  /// The storage account type to be used for the data disk. Values are: Possible values are `Standard_LRS` - The data disk should use standard locally redundant storage. `Premium_LRS` - The data disk should use premium locally redundant storage. Defaults to `Standard_LRS`.
  final pulumi.Input<String>? storageAccountType;

  /// Creates a new [PoolDataDisk].
  /// [caching] Values are: "none" - The caching mode for the disk is not enabled. "readOnly" - The caching mode for the disk is read only. "readWrite" - The caching mode for the disk is read and write. For information about the caching options see: <https://blogs.msdn.microsoft.com/windowsazurestorage/2012/06/27/exploring-windows-azure-drives-disks-and-images/>. Possible values are `None`, `ReadOnly` and `ReadWrite`. Defaults to `ReadOnly`.
  /// [diskSizeGb] The initial disk size in GB when creating new data disk.
  /// [lun] The lun is used to uniquely identify each data disk. If attaching multiple disks, each should have a distinct lun. The value must be between 0 and 63, inclusive.
  /// [storageAccountType] The storage account type to be used for the data disk. Values are: Possible values are `Standard_LRS` - The data disk should use standard locally redundant storage. `Premium_LRS` - The data disk should use premium locally redundant storage. Defaults to `Standard_LRS`.
  PoolDataDisk({
    this.caching,
    required this.diskSizeGb,
    required this.lun,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': ?caching,
      'diskSizeGb': diskSizeGb,
      'lun': lun,
      'storageAccountType': ?storageAccountType,
    };
  }

  factory PoolDataDisk.fromMap(Map<String, dynamic> map) {
    return PoolDataDisk(
      caching: map['caching'] == null ? null : (map['caching'] as String).input(),
      diskSizeGb: (map['diskSizeGb'] as int).input(),
      lun: (map['lun'] as int).input(),
      storageAccountType: map['storageAccountType'] == null ? null : (map['storageAccountType'] as String).input(),
    );
  }
}

