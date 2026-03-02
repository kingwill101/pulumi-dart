// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstanceConfigDeviceSdd {
  /// The Disk ID of the associated `disk_label`, if used
  final pulumi.Input<int> diskId;
  /// The `label` of the `disk` to map to this `device` slot.
  final pulumi.Input<String>? diskLabel;
  /// The Volume ID to map to this `device` slot.
  final pulumi.Input<int>? volumeId;

  /// Creates a new [GetInstancesInstanceConfigDeviceSdd].
  /// [diskId] The Disk ID of the associated `disk_label`, if used
  /// [diskLabel] The `label` of the `disk` to map to this `device` slot.
  /// [volumeId] The Volume ID to map to this `device` slot.
  GetInstancesInstanceConfigDeviceSdd({
    required this.diskId,
    this.diskLabel,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': diskId,
      'diskLabel': ?diskLabel,
      'volumeId': ?volumeId,
    };
  }

  factory GetInstancesInstanceConfigDeviceSdd.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceConfigDeviceSdd(
      diskId: (map['diskId'] as int).input(),
      diskLabel: map['diskLabel'] == null ? null : (map['diskLabel'] as String).input(),
      volumeId: map['volumeId'] == null ? null : (map['volumeId'] as int).input(),
    );
  }
}

