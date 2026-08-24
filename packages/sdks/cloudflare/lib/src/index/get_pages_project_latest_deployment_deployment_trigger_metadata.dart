// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectLatestDeploymentDeploymentTriggerMetadata {
  /// Where the trigger happened.
  final pulumi.Input<String> branch;
  /// Whether the deployment trigger commit was dirty.
  final pulumi.Input<bool> commitDirty;
  /// Hash of the deployment trigger commit.
  final pulumi.Input<String> commitHash;
  /// Message of the deployment trigger commit.
  final pulumi.Input<String> commitMessage;

  /// Creates a new [GetPagesProjectLatestDeploymentDeploymentTriggerMetadata].
  /// [branch] Where the trigger happened.
  /// [commitDirty] Whether the deployment trigger commit was dirty.
  /// [commitHash] Hash of the deployment trigger commit.
  /// [commitMessage] Message of the deployment trigger commit.
  const GetPagesProjectLatestDeploymentDeploymentTriggerMetadata({
    required this.branch,
    required this.commitDirty,
    required this.commitHash,
    required this.commitMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': branch,
      'commitDirty': commitDirty,
      'commitHash': commitHash,
      'commitMessage': commitMessage,
    };
  }

  factory GetPagesProjectLatestDeploymentDeploymentTriggerMetadata.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectLatestDeploymentDeploymentTriggerMetadata(
      branch: pulumi.Input.fromValue(map['branch'] as String),
      commitDirty: pulumi.Input.fromValue(map['commitDirty'] as bool),
      commitHash: pulumi.Input.fromValue(map['commitHash'] as String),
      commitMessage: pulumi.Input.fromValue(map['commitMessage'] as String),
    );
  }
}
