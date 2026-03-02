// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceConfigDevicesSda {
  /// The Disk ID to map to this `device` slot
  final pulumi.Input<int>? diskId;
  /// The Volume ID to map to this `device` slot.
  final pulumi.Input<int>? volumeId;

  /// Creates a new [InstanceConfigDevicesSda].
  /// [diskId] The Disk ID to map to this `device` slot
  /// [volumeId] The Volume ID to map to this `device` slot.
  InstanceConfigDevicesSda({
    this.diskId,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': ?diskId,
      'volumeId': ?volumeId,
    };
  }

  factory InstanceConfigDevicesSda.fromMap(Map<String, dynamic> map) {
    return InstanceConfigDevicesSda(
      diskId: map['diskId'] == null ? null : (map['diskId']! as int).input(),
      volumeId: map['volumeId'] == null ? null : (map['volumeId']! as int).input(),
    );
  }
}

