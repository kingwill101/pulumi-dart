// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource {
  /// The commit SHA to read repository with. If unset, the file will be read at HEAD.
  final pulumi.Input<String>? commitSha;
  /// The resource name of the Dataform Repository. Format: `projects/{project_id}/locations/{location}/repositories/{repository_id}`
  final pulumi.Input<String> dataformRepositoryResourceName;

  /// Creates a new [ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource].
  /// [commitSha] The commit SHA to read repository with. If unset, the file will be read at HEAD.
  /// [dataformRepositoryResourceName] The resource name of the Dataform Repository. Format: `projects/{project_id}/locations/{location}/repositories/{repository_id}`
  const ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource({
    this.commitSha,
    required this.dataformRepositoryResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitSha': ?commitSha,
      'dataformRepositoryResourceName': dataformRepositoryResourceName,
    };
  }

  factory ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource.fromMap(Map<String, dynamic> map) {
    return ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource(
      commitSha: (() { final guardedValue = map['commitSha']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataformRepositoryResourceName: pulumi.Input.fromValue(map['dataformRepositoryResourceName'] as String),
    );
  }
}
