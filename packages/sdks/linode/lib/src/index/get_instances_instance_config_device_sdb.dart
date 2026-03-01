// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstanceConfigDeviceSdb {
  /// The Disk ID of the associated `disk_label`, if used
  final int diskId;
  /// The `label` of the `disk` to map to this `device` slot.
  final String? diskLabel;
  /// The Volume ID to map to this `device` slot.
  final int? volumeId;

  /// Creates a new [GetInstancesInstanceConfigDeviceSdb].
  /// [diskId] The Disk ID of the associated `disk_label`, if used
  /// [diskLabel] The `label` of the `disk` to map to this `device` slot.
  /// [volumeId] The Volume ID to map to this `device` slot.
  GetInstancesInstanceConfigDeviceSdb({
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

  factory GetInstancesInstanceConfigDeviceSdb.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceConfigDeviceSdb(
      diskId: map['diskId'] as int,
      diskLabel: map['diskLabel'] == null ? null : map['diskLabel'] as String,
      volumeId: map['volumeId'] == null ? null : map['volumeId'] as int,
    );
  }
}

