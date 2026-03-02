// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceConfigDevicesSde {
  /// The Disk ID to map to this disk slot
  final pulumi.Input<int>? diskId;
  /// The Block Storage volume ID to map to this disk slot
  final pulumi.Input<int>? volumeId;

  /// Creates a new [InstanceConfigDevicesSde].
  /// [diskId] The Disk ID to map to this disk slot
  /// [volumeId] The Block Storage volume ID to map to this disk slot
  InstanceConfigDevicesSde({
    this.diskId,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': ?diskId,
      'volumeId': ?volumeId,
    };
  }

  factory InstanceConfigDevicesSde.fromMap(Map<String, dynamic> map) {
    return InstanceConfigDevicesSde(
      diskId: map['diskId'] == null ? null : (map['diskId']! as int).input(),
      volumeId: map['volumeId'] == null ? null : (map['volumeId']! as int).input(),
    );
  }
}

