// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlProjectIntelligenceFindingsFindingObservationPeriod {
  /// The end time of the observation period.
  final pulumi.Input<String> endTime;
  /// The start time of the observation period.
  final pulumi.Input<String> startTime;

  /// Creates a new [GetControlProjectIntelligenceFindingsFindingObservationPeriod].
  /// [endTime] The end time of the observation period.
  /// [startTime] The start time of the observation period.
  const GetControlProjectIntelligenceFindingsFindingObservationPeriod({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory GetControlProjectIntelligenceFindingsFindingObservationPeriod.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingsFindingObservationPeriod(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
