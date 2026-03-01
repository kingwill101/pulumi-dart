// ignore_for_file: unused_element, unnecessary_cast


class FlexibleServerStorage {
  /// Should Storage Auto Grow be enabled? Defaults to `true`.
  final bool? autoGrowEnabled;
  /// Should IOPS be scaled automatically? If `true`, `iops` can not be set. Defaults to `false`.
  final bool? ioScalingEnabled;
  /// The storage IOPS for the MySQL Flexible Server. Possible values are between `360` and `20000`.
  final int? iops;
  /// Should Storage Log On Disk be enabled? Defaults to `false`.
  final bool? logOnDiskEnabled;
  /// The max storage allowed for the MySQL Flexible Server. Possible values are between `20` and `16384`.
  ///
  /// > **Note:** Decreasing `size_gb` forces a new resource to be created.
  final int? sizeGb;

  /// Creates a new [FlexibleServerStorage].
  /// [autoGrowEnabled] Should Storage Auto Grow be enabled? Defaults to `true`.
  /// [ioScalingEnabled] Should IOPS be scaled automatically? If `true`, `iops` can not be set. Defaults to `false`.
  /// [iops] The storage IOPS for the MySQL Flexible Server. Possible values are between `360` and `20000`.
  /// [logOnDiskEnabled] Should Storage Log On Disk be enabled? Defaults to `false`.
  /// [sizeGb] The max storage allowed for the MySQL Flexible Server. Possible values are between `20` and `16384`.
  FlexibleServerStorage({
    this.autoGrowEnabled,
    this.ioScalingEnabled,
    this.iops,
    this.logOnDiskEnabled,
    this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoGrowEnabled': ?autoGrowEnabled,
      'ioScalingEnabled': ?ioScalingEnabled,
      'iops': ?iops,
      'logOnDiskEnabled': ?logOnDiskEnabled,
      'sizeGb': ?sizeGb,
    };
  }

  factory FlexibleServerStorage.fromMap(Map<String, dynamic> map) {
    return FlexibleServerStorage(
      autoGrowEnabled: map['autoGrowEnabled'] == null ? null : map['autoGrowEnabled'] as bool,
      ioScalingEnabled: map['ioScalingEnabled'] == null ? null : map['ioScalingEnabled'] as bool,
      iops: map['iops'] == null ? null : map['iops'] as int,
      logOnDiskEnabled: map['logOnDiskEnabled'] == null ? null : map['logOnDiskEnabled'] as bool,
      sizeGb: map['sizeGb'] == null ? null : map['sizeGb'] as int,
    );
  }
}

