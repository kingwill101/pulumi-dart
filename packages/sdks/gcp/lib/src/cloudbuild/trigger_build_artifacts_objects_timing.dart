// ignore_for_file: unused_element, unnecessary_cast


class TriggerBuildArtifactsObjectsTiming {
  /// End of time span.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to
  /// nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? endTime;
  /// Start of time span.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to
  /// nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? startTime;

  /// Creates a new [TriggerBuildArtifactsObjectsTiming].
  /// [endTime] End of time span.
  /// [startTime] Start of time span.
  TriggerBuildArtifactsObjectsTiming({
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'startTime': ?startTime,
    };
  }

  factory TriggerBuildArtifactsObjectsTiming.fromMap(Map<String, dynamic> map) {
    return TriggerBuildArtifactsObjectsTiming(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

