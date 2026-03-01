// ignore_for_file: unused_element, unnecessary_cast


class InstanceConfigDevicesSdg {
  /// The Disk ID to map to this disk slot
  final int? diskId;
  /// The Block Storage volume ID to map to this disk slot
  final int? volumeId;

  /// Creates a new [InstanceConfigDevicesSdg].
  /// [diskId] The Disk ID to map to this disk slot
  /// [volumeId] The Block Storage volume ID to map to this disk slot
  InstanceConfigDevicesSdg({
    this.diskId,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': ?diskId,
      'volumeId': ?volumeId,
    };
  }

  factory InstanceConfigDevicesSdg.fromMap(Map<String, dynamic> map) {
    return InstanceConfigDevicesSdg(
      diskId: map['diskId'] == null ? null : map['diskId'] as int,
      volumeId: map['volumeId'] == null ? null : map['volumeId'] as int,
    );
  }
}

