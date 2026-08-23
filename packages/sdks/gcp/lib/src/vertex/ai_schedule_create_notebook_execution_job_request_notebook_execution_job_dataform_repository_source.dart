// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource {
  /// The commit SHA to read repository with. If unset, the file will be read at HEAD.
  final pulumi.Input<String>? commitSha;
  /// The resource name of the Dataform Repository. Format: `projects/{project_id}/locations/{location}/repositories/{repository_id}`
  final pulumi.Input<String>? dataformRepositoryResourceName;

  /// Creates a new [AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource].
  /// [commitSha] The commit SHA to read repository with. If unset, the file will be read at HEAD.
  /// [dataformRepositoryResourceName] The resource name of the Dataform Repository. Format: `projects/{project_id}/locations/{location}/repositories/{repository_id}`
  const AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource({
    this.commitSha,
    this.dataformRepositoryResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitSha': ?commitSha,
      'dataformRepositoryResourceName': ?dataformRepositoryResourceName,
    };
  }

  factory AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource.fromMap(Map<String, dynamic> map) {
    return AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource(
      commitSha: (() { final guardedValue = map['commitSha']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataformRepositoryResourceName: (() { final guardedValue = map['dataformRepositoryResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
