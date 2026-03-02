// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotebookExecutionDataformRepositorySource {
  /// The commit SHA to read repository with. If unset, the file will be read at HEAD.
  final pulumi.Input<String>? commitSha;
  /// The resource name of the Dataform Repository.
  final pulumi.Input<String> dataformRepositoryResourceName;

  /// Creates a new [NotebookExecutionDataformRepositorySource].
  /// [commitSha] The commit SHA to read repository with. If unset, the file will be read at HEAD.
  /// [dataformRepositoryResourceName] The resource name of the Dataform Repository.
  NotebookExecutionDataformRepositorySource({
    this.commitSha,
    required this.dataformRepositoryResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitSha': ?commitSha,
      'dataformRepositoryResourceName': dataformRepositoryResourceName,
    };
  }

  factory NotebookExecutionDataformRepositorySource.fromMap(Map<String, dynamic> map) {
    return NotebookExecutionDataformRepositorySource(
      commitSha: map['commitSha'] == null ? null : (map['commitSha'] as String).input(),
      dataformRepositoryResourceName: (map['dataformRepositoryResourceName'] as String).input(),
    );
  }
}

