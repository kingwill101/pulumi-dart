// ignore_for_file: unused_element, unnecessary_cast

import 'project_repo_id.dart';

/// A unique identifier for a Cloud Repo.
class RepoId {
  /// A combination of a project ID and a repo name.
  final ProjectRepoId? projectRepoId;
  /// A server-assigned, globally unique identifier.
  final String? uid;

  /// Creates a new [RepoId].
  /// [projectRepoId] A combination of a project ID and a repo name.
  /// [uid] A server-assigned, globally unique identifier.
  RepoId({
    this.projectRepoId,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectRepoId': ?projectRepoId == null ? null : projectRepoId!.toMap(),
      'uid': ?uid,
    };
  }

  factory RepoId.fromMap(Map<String, dynamic> map) {
    return RepoId(
      projectRepoId: map['projectRepoId'] == null ? null : ProjectRepoId.fromMap((map['projectRepoId'] as Map).cast<String, dynamic>()),
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}

