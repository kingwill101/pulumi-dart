// ignore_for_file: unused_element, unnecessary_cast


/// The retention details of the MT.
class RetentionVolumeResponse {
  /// The volume capacity.
  final double? capacityInBytes;
  /// The free space available in this volume.
  final double? freeSpaceInBytes;
  /// The threshold percentage.
  final int? thresholdPercentage;
  /// The volume name.
  final String? volumeName;

  /// Creates a new [RetentionVolumeResponse].
  /// [capacityInBytes] The volume capacity.
  /// [freeSpaceInBytes] The free space available in this volume.
  /// [thresholdPercentage] The threshold percentage.
  /// [volumeName] The volume name.
  RetentionVolumeResponse({
    this.capacityInBytes,
    this.freeSpaceInBytes,
    this.thresholdPercentage,
    this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityInBytes': ?capacityInBytes,
      'freeSpaceInBytes': ?freeSpaceInBytes,
      'thresholdPercentage': ?thresholdPercentage,
      'volumeName': ?volumeName,
    };
  }

  factory RetentionVolumeResponse.fromMap(Map<String, dynamic> map) {
    return RetentionVolumeResponse(
      capacityInBytes: map['capacityInBytes'] == null ? null : map['capacityInBytes'] as double,
      freeSpaceInBytes: map['freeSpaceInBytes'] == null ? null : map['freeSpaceInBytes'] as double,
      thresholdPercentage: map['thresholdPercentage'] == null ? null : map['thresholdPercentage'] as int,
      volumeName: map['volumeName'] == null ? null : map['volumeName'] as String,
    );
  }
}

