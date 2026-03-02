// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceConfigDevice {
  /// The Disk ID to map to this disk slot
  final pulumi.Input<String> deviceName;
  /// The Disk ID to map to this disk slot
  final pulumi.Input<int>? diskId;
  /// The Block Storage volume ID to map to this disk slot
  final pulumi.Input<int>? volumeId;

  /// Creates a new [InstanceConfigDevice].
  /// [deviceName] The Disk ID to map to this disk slot
  /// [diskId] The Disk ID to map to this disk slot
  /// [volumeId] The Block Storage volume ID to map to this disk slot
  InstanceConfigDevice({
    required this.deviceName,
    this.diskId,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'diskId': ?diskId,
      'volumeId': ?volumeId,
    };
  }

  factory InstanceConfigDevice.fromMap(Map<String, dynamic> map) {
    return InstanceConfigDevice(
      deviceName: (map['deviceName'] as String).input(),
      diskId: map['diskId'] == null ? null : (map['diskId']! as int).input(),
      volumeId: map['volumeId'] == null ? null : (map['volumeId']! as int).input(),
    );
  }
}

