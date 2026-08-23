// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_repo_id.dart';

/// A unique identifier for a Cloud Repo.
class RepoId {
  /// A combination of a project ID and a repo name.
  final pulumi.Input<ProjectRepoId>? projectRepoId;
  /// A server-assigned, globally unique identifier.
  final pulumi.Input<String>? uid;

  /// Creates a new [RepoId].
  /// [projectRepoId] A combination of a project ID and a repo name.
  /// [uid] A server-assigned, globally unique identifier.
  const RepoId({
    this.projectRepoId,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectRepoId': ?pulumi.Input.mapOptionalInputValue<ProjectRepoId, Map<String, dynamic>>(projectRepoId, (value) => value.toMap()),
      'uid': ?uid,
    };
  }

  factory RepoId.fromMap(Map<String, dynamic> map) {
    return RepoId(
      projectRepoId: (() { final guardedValue = map['projectRepoId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectRepoId.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
