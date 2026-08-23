// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTriggerBuildArtifactObjectTiming {
  /// End of time span.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to
  /// nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String> endTime;
  /// Start of time span.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to
  /// nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String> startTime;

  /// Creates a new [GetTriggerBuildArtifactObjectTiming].
  /// [endTime] End of time span.
  /// [startTime] Start of time span.
  const GetTriggerBuildArtifactObjectTiming({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory GetTriggerBuildArtifactObjectTiming.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildArtifactObjectTiming(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
