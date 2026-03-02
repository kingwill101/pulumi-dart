// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPoolDataDisk {
  /// The caching mode of data disks.
  final pulumi.Input<String> caching;
  /// The initial disk size in GB when creating new data disk.
  final pulumi.Input<int> diskSizeGb;
  /// The lun is used to uniquely identify each data disk.
  final pulumi.Input<int> lun;
  /// The storage account type to be used for the data disk.
  final pulumi.Input<String> storageAccountType;

  /// Creates a new [GetPoolDataDisk].
  /// [caching] The caching mode of data disks.
  /// [diskSizeGb] The initial disk size in GB when creating new data disk.
  /// [lun] The lun is used to uniquely identify each data disk.
  /// [storageAccountType] The storage account type to be used for the data disk.
  GetPoolDataDisk({
    required this.caching,
    required this.diskSizeGb,
    required this.lun,
    required this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': caching,
      'diskSizeGb': diskSizeGb,
      'lun': lun,
      'storageAccountType': storageAccountType,
    };
  }

  factory GetPoolDataDisk.fromMap(Map<String, dynamic> map) {
    return GetPoolDataDisk(
      caching: (map['caching'] as String).input(),
      diskSizeGb: (map['diskSizeGb'] as int).input(),
      lun: (map['lun'] as int).input(),
      storageAccountType: (map['storageAccountType'] as String).input(),
    );
  }
}

