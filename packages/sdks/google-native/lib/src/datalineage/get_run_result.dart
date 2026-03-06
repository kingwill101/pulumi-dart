// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRun.
class GetRunResult {
  /// Optional. The attributes of the run. Should only be used for the purpose of non-semantic management (classifying, describing or labeling the run). Up to 100 attributes are allowed.
  final Map<String, String> attributes;
  /// Optional. A human-readable name you can set to display in a user interface. Must be not longer than 1024 characters and only contain UTF-8 letters or numbers, spaces or characters like `_-:&.`
  final String displayName;
  /// Optional. The timestamp of the end of the run.
  final String endTime;
  /// Immutable. The resource name of the run. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}`. Can be specified or auto-assigned. {run} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  final String name;
  /// The timestamp of the start of the run.
  final String startTime;
  /// The state of the run.
  final String state;

  /// Creates a new [GetRunResult].
  /// [attributes] Optional. The attributes of the run. Should only be used for the purpose of non-semantic management (classifying, describing or labeling the run). Up to 100 attributes are allowed.
  /// [displayName] Optional. A human-readable name you can set to display in a user interface. Must be not longer than 1024 characters and only contain UTF-8 letters or numbers, spaces or characters like `_-:&.`
  /// [endTime] Optional. The timestamp of the end of the run.
  /// [name] Immutable. The resource name of the run. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}`. Can be specified or auto-assigned. {run} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  /// [startTime] The timestamp of the start of the run.
  /// [state] The state of the run.
  const GetRunResult({
    required this.attributes,
    required this.displayName,
    required this.endTime,
    required this.name,
    required this.startTime,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': attributes,
      'displayName': displayName,
      'endTime': endTime,
      'name': name,
      'startTime': startTime,
      'state': state,
    };
  }

  factory GetRunResult.fromMap(Map<String, dynamic> map) {
    return GetRunResult(
      attributes: (map['attributes'] as Map).cast<String, String>(),
      displayName: map['displayName'] as String,
      endTime: map['endTime'] as String,
      name: map['name'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
    );
  }
}

