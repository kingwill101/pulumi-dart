// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional information about how a Cloud Dataflow job will be executed that isn't contained in the submitted job.
class JobExecutionInfo {
  /// A mapping from each stage to the information about that stage.
  final pulumi.Input<Map<String, String>>? stages;

  /// Creates a new [JobExecutionInfo].
  /// [stages] A mapping from each stage to the information about that stage.
  const JobExecutionInfo({
    this.stages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stages': ?stages,
    };
  }

  factory JobExecutionInfo.fromMap(Map<String, dynamic> map) {
    return JobExecutionInfo(
      stages: (() { final guardedValue = map['stages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
