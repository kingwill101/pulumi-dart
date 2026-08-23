// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlProjectIntelligenceFindingRevisionSnapshotObservationPeriod {
  /// The end time of the observation period.
  final pulumi.Input<String> endTime;
  /// The start time of the observation period.
  final pulumi.Input<String> startTime;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionSnapshotObservationPeriod].
  /// [endTime] The end time of the observation period.
  /// [startTime] The start time of the observation period.
  const GetControlProjectIntelligenceFindingRevisionSnapshotObservationPeriod({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionSnapshotObservationPeriod.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionSnapshotObservationPeriod(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
