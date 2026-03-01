// ignore_for_file: unused_element, unnecessary_cast


class ScaleSetStorageProfileDataDisk {
  /// Specifies the caching requirements. Possible values include: `None` (default), `ReadOnly`, `ReadWrite`.
  final String? caching;
  /// Specifies how the data disk should be created. The only possible options are `FromImage` and `Empty`.
  final String createOption;
  /// Specifies the size of the disk in GB. This element is required when creating an empty disk.
  final int? diskSizeGb;
  /// Specifies the Logical Unit Number of the disk in each virtual machine in the scale set.
  final int lun;
  /// Specifies the type of managed disk to create. Value must be either `Standard_LRS`, `StandardSSD_LRS` or `Premium_LRS`.
  final String? managedDiskType;

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
      caching: map['caching'] == null ? null : map['caching'] as String,
      createOption: map['createOption'] as String,
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      lun: map['lun'] as int,
      managedDiskType: map['managedDiskType'] == null ? null : map['managedDiskType'] as String,
    );
  }
}

