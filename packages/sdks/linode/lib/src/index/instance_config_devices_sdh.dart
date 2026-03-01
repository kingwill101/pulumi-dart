// ignore_for_file: unused_element, unnecessary_cast


class InstanceConfigDevicesSdh {
  /// The Disk ID to map to this disk slot
  final int? diskId;
  /// The Block Storage volume ID to map to this disk slot
  final int? volumeId;

  /// Creates a new [InstanceConfigDevicesSdh].
  /// [diskId] The Disk ID to map to this disk slot
  /// [volumeId] The Block Storage volume ID to map to this disk slot
  InstanceConfigDevicesSdh({
    this.diskId,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': ?diskId,
      'volumeId': ?volumeId,
    };
  }

  factory InstanceConfigDevicesSdh.fromMap(Map<String, dynamic> map) {
    return InstanceConfigDevicesSdh(
      diskId: map['diskId'] == null ? null : map['diskId'] as int,
      volumeId: map['volumeId'] == null ? null : map['volumeId'] as int,
    );
  }
}

