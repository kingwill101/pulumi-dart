// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotObservationPeriod {
  /// The end time of the observation period.
  final pulumi.Input<String> endTime;
  /// The start time of the observation period.
  final pulumi.Input<String> startTime;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotObservationPeriod].
  /// [endTime] The end time of the observation period.
  /// [startTime] The start time of the observation period.
  const GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotObservationPeriod({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotObservationPeriod.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotObservationPeriod(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
