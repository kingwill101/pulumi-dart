// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobLatestCreatedExecution {
  /// (Output)
  /// Completion timestamp of the execution.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? completionTime;

  /// (Output)
  /// Creation timestamp of the execution.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;

  /// Name of the Job.
  final pulumi.Input<String>? name;

  /// Creates a new [JobLatestCreatedExecution].
  /// [completionTime] (Output)
  /// [createTime] (Output)
  /// [name] Name of the Job.
  JobLatestCreatedExecution({this.completionTime, this.createTime, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionTime': ?completionTime,
      'createTime': ?createTime,
      'name': ?name,
    };
  }

  factory JobLatestCreatedExecution.fromMap(Map<String, dynamic> map) {
    return JobLatestCreatedExecution(
      completionTime: (() {
        final guardedValue = map['completionTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
