// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectCanonicalDeploymentDeploymentTriggerMetadata {
  /// Where the trigger happened.
  final pulumi.Input<String?>? branch;
  /// Whether the deployment trigger commit was dirty.
  final pulumi.Input<bool?>? commitDirty;
  /// Hash of the deployment trigger commit.
  final pulumi.Input<String?>? commitHash;
  /// Message of the deployment trigger commit.
  final pulumi.Input<String?>? commitMessage;

  /// Creates a new [PagesProjectCanonicalDeploymentDeploymentTriggerMetadata].
  /// [branch] Where the trigger happened.
  /// [commitDirty] Whether the deployment trigger commit was dirty.
  /// [commitHash] Hash of the deployment trigger commit.
  /// [commitMessage] Message of the deployment trigger commit.
  const PagesProjectCanonicalDeploymentDeploymentTriggerMetadata({
    this.branch,
    this.commitDirty,
    this.commitHash,
    this.commitMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'commitDirty': ?commitDirty,
      'commitHash': ?commitHash,
      'commitMessage': ?commitMessage,
    };
  }

  factory PagesProjectCanonicalDeploymentDeploymentTriggerMetadata.fromMap(Map<String, dynamic> map) {
    return PagesProjectCanonicalDeploymentDeploymentTriggerMetadata(
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commitDirty: (() { final guardedValue = map['commitDirty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      commitHash: (() { final guardedValue = map['commitHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commitMessage: (() { final guardedValue = map['commitMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
