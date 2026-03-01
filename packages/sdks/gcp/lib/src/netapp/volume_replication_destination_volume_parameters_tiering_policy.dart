// ignore_for_file: unused_element, unnecessary_cast


class VolumeReplicationDestinationVolumeParametersTieringPolicy {
  /// Optional. Time in days to mark the volume's data block as cold and make it eligible for tiering, can be range from 2-183.
  /// Default is 31.
  final int? coolingThresholdDays;
  /// Optional. Flag indicating if the volume has tiering policy enable/pause. Default is PAUSED.
  /// Default value is `PAUSED`.
  /// Possible values are: `ENABLED`, `PAUSED`.
  final String? tierAction;

  /// Creates a new [VolumeReplicationDestinationVolumeParametersTieringPolicy].
  /// [coolingThresholdDays] Optional. Time in days to mark the volume's data block as cold and make it eligible for tiering, can be range from 2-183.
  /// [tierAction] Optional. Flag indicating if the volume has tiering policy enable/pause. Default is PAUSED.
  VolumeReplicationDestinationVolumeParametersTieringPolicy({
    this.coolingThresholdDays,
    this.tierAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coolingThresholdDays': ?coolingThresholdDays,
      'tierAction': ?tierAction,
    };
  }

  factory VolumeReplicationDestinationVolumeParametersTieringPolicy.fromMap(Map<String, dynamic> map) {
    return VolumeReplicationDestinationVolumeParametersTieringPolicy(
      coolingThresholdDays: map['coolingThresholdDays'] == null ? null : map['coolingThresholdDays'] as int,
      tierAction: map['tierAction'] == null ? null : map['tierAction'] as String,
    );
  }
}

