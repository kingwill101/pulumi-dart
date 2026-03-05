// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstanceConfigDeviceSda {
  /// The Disk ID of the associated `disk_label`, if used
  final pulumi.Input<int> diskId;
  /// The `label` of the `disk` to map to this `device` slot.
  final pulumi.Input<String>? diskLabel;
  /// The Volume ID to map to this `device` slot.
  final pulumi.Input<int>? volumeId;

  /// Creates a new [GetInstancesInstanceConfigDeviceSda].
  /// [diskId] The Disk ID of the associated `disk_label`, if used
  /// [diskLabel] The `label` of the `disk` to map to this `device` slot.
  /// [volumeId] The Volume ID to map to this `device` slot.
  GetInstancesInstanceConfigDeviceSda({
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

  factory GetInstancesInstanceConfigDeviceSda.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceConfigDeviceSda(
      diskId: pulumi.Input.fromValue(map['diskId'] as int),
      diskLabel: (() { final guardedValue = map['diskLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

