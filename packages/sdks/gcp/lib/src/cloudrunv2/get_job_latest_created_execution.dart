// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobLatestCreatedExecution {
  /// Completion timestamp of the execution.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String> completionTime;
  /// Creation timestamp of the execution.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String> createTime;
  /// The name of the Cloud Run v2 Job.
  final pulumi.Input<String> name;

  /// Creates a new [GetJobLatestCreatedExecution].
  /// [completionTime] Completion timestamp of the execution.
  /// [createTime] Creation timestamp of the execution.
  /// [name] The name of the Cloud Run v2 Job.
  const GetJobLatestCreatedExecution({
    required this.completionTime,
    required this.createTime,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionTime': completionTime,
      'createTime': createTime,
      'name': name,
    };
  }

  factory GetJobLatestCreatedExecution.fromMap(Map<String, dynamic> map) {
    return GetJobLatestCreatedExecution(
      completionTime: pulumi.Input.fromValue(map['completionTime'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
