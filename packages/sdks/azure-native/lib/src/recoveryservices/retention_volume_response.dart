// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The retention details of the MT.
class RetentionVolumeResponse {
  /// The volume capacity.
  final pulumi.Input<double>? capacityInBytes;
  /// The free space available in this volume.
  final pulumi.Input<double>? freeSpaceInBytes;
  /// The threshold percentage.
  final pulumi.Input<int>? thresholdPercentage;
  /// The volume name.
  final pulumi.Input<String>? volumeName;

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
      capacityInBytes: map['capacityInBytes'] == null ? null : (map['capacityInBytes']! as double).input(),
      freeSpaceInBytes: map['freeSpaceInBytes'] == null ? null : (map['freeSpaceInBytes']! as double).input(),
      thresholdPercentage: map['thresholdPercentage'] == null ? null : (map['thresholdPercentage']! as int).input(),
      volumeName: map['volumeName'] == null ? null : (map['volumeName']! as String).input(),
    );
  }
}

