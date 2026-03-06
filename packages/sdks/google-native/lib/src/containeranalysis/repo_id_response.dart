// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_repo_id_response.dart';

/// A unique identifier for a Cloud Repo.
class RepoIdResponse {
  /// A combination of a project ID and a repo name.
  final pulumi.Input<ProjectRepoIdResponse> projectRepoId;
  /// A server-assigned, globally unique identifier.
  final pulumi.Input<String> uid;

  /// Creates a new [RepoIdResponse].
  /// [projectRepoId] A combination of a project ID and a repo name.
  /// [uid] A server-assigned, globally unique identifier.
  const RepoIdResponse({
    required this.projectRepoId,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectRepoId': pulumi.Input.mapInputValue<ProjectRepoIdResponse, Map<String, dynamic>>(projectRepoId, (value) => value.toMap()),
      'uid': uid,
    };
  }

  factory RepoIdResponse.fromMap(Map<String, dynamic> map) {
    return RepoIdResponse(
      projectRepoId: pulumi.Input.fromValue(ProjectRepoIdResponse.fromMap((map['projectRepoId']! as Map).cast<String, dynamic>())),
      uid: pulumi.Input.fromValue(map['uid'] as String),
    );
  }
}

