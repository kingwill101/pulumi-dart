// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleServerStorage {
  /// Should Storage Auto Grow be enabled? Defaults to `true`.
  final pulumi.Input<bool>? autoGrowEnabled;
  /// Should IOPS be scaled automatically? If `true`, `iops` can not be set. Defaults to `false`.
  final pulumi.Input<bool>? ioScalingEnabled;
  /// The storage IOPS for the MySQL Flexible Server. Possible values are between `360` and `20000`.
  final pulumi.Input<int>? iops;
  /// Should Storage Log On Disk be enabled? Defaults to `false`.
  final pulumi.Input<bool>? logOnDiskEnabled;
  /// The max storage allowed for the MySQL Flexible Server. Possible values are between `20` and `16384`.
  ///
  /// &gt; **Note:** Decreasing `size_gb` forces a new resource to be created.
  final pulumi.Input<int>? sizeGb;

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
      autoGrowEnabled: (() { final guardedValue = map['autoGrowEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ioScalingEnabled: (() { final guardedValue = map['ioScalingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      logOnDiskEnabled: (() { final guardedValue = map['logOnDiskEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sizeGb: (() { final guardedValue = map['sizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

