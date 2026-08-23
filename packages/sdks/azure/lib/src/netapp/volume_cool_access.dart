// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeCoolAccess {
  /// The coolness period in days for the volume. Possible vales are between `2` and `183`.
  final pulumi.Input<int> coolnessPeriodInDays;
  /// The cool access retrieval policy for the volume. Possible values are `Default`, `Never` and `OnRead`.
  final pulumi.Input<String> retrievalPolicy;
  /// The cool access tiering policy for the volume. Possible values are `Auto` and `SnapshotOnly`.
  final pulumi.Input<String> tieringPolicy;

  /// Creates a new [VolumeCoolAccess].
  /// [coolnessPeriodInDays] The coolness period in days for the volume. Possible vales are between `2` and `183`.
  /// [retrievalPolicy] The cool access retrieval policy for the volume. Possible values are `Default`, `Never` and `OnRead`.
  /// [tieringPolicy] The cool access tiering policy for the volume. Possible values are `Auto` and `SnapshotOnly`.
  const VolumeCoolAccess({
    required this.coolnessPeriodInDays,
    required this.retrievalPolicy,
    required this.tieringPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coolnessPeriodInDays': coolnessPeriodInDays,
      'retrievalPolicy': retrievalPolicy,
      'tieringPolicy': tieringPolicy,
    };
  }

  factory VolumeCoolAccess.fromMap(Map<String, dynamic> map) {
    return VolumeCoolAccess(
      coolnessPeriodInDays: pulumi.Input.fromValue(map['coolnessPeriodInDays'] as int),
      retrievalPolicy: pulumi.Input.fromValue(map['retrievalPolicy'] as String),
      tieringPolicy: pulumi.Input.fromValue(map['tieringPolicy'] as String),
    );
  }
}
