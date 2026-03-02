// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFlexibleServerStorage {
  /// Is Storage Auto Grow enabled?
  final pulumi.Input<bool> autoGrowEnabled;
  /// Should IOPS be scaled automatically?
  final pulumi.Input<bool> ioScalingEnabled;
  /// The storage IOPS of the MySQL Flexible Server.
  final pulumi.Input<int> iops;
  /// The max storage allowed for the MySQL Flexible Server.
  final pulumi.Input<int> sizeGb;

  /// Creates a new [GetFlexibleServerStorage].
  /// [autoGrowEnabled] Is Storage Auto Grow enabled?
  /// [ioScalingEnabled] Should IOPS be scaled automatically?
  /// [iops] The storage IOPS of the MySQL Flexible Server.
  /// [sizeGb] The max storage allowed for the MySQL Flexible Server.
  GetFlexibleServerStorage({
    required this.autoGrowEnabled,
    required this.ioScalingEnabled,
    required this.iops,
    required this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoGrowEnabled': autoGrowEnabled,
      'ioScalingEnabled': ioScalingEnabled,
      'iops': iops,
      'sizeGb': sizeGb,
    };
  }

  factory GetFlexibleServerStorage.fromMap(Map<String, dynamic> map) {
    return GetFlexibleServerStorage(
      autoGrowEnabled: (map['autoGrowEnabled'] as bool).input(),
      ioScalingEnabled: (map['ioScalingEnabled'] as bool).input(),
      iops: (map['iops'] as int).input(),
      sizeGb: (map['sizeGb'] as int).input(),
    );
  }
}

