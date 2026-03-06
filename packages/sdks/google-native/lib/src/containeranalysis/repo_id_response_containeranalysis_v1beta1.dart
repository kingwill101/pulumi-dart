// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_repo_id_response_containeranalysis_v1beta1.dart';

/// A unique identifier for a Cloud Repo.
class RepoIdResponseContaineranalysisV1beta1 {
  /// A combination of a project ID and a repo name.
  final pulumi.Input<ProjectRepoIdResponseContaineranalysisV1beta1> projectRepoId;
  /// A server-assigned, globally unique identifier.
  final pulumi.Input<String> uid;

  /// Creates a new [RepoIdResponseContaineranalysisV1beta1].
  /// [projectRepoId] A combination of a project ID and a repo name.
  /// [uid] A server-assigned, globally unique identifier.
  const RepoIdResponseContaineranalysisV1beta1({
    required this.projectRepoId,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectRepoId': pulumi.Input.mapInputValue<ProjectRepoIdResponseContaineranalysisV1beta1, Map<String, dynamic>>(projectRepoId, (value) => value.toMap()),
      'uid': uid,
    };
  }

  factory RepoIdResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return RepoIdResponseContaineranalysisV1beta1(
      projectRepoId: pulumi.Input.fromValue(ProjectRepoIdResponseContaineranalysisV1beta1.fromMap((map['projectRepoId']! as Map).cast<String, dynamic>())),
      uid: pulumi.Input.fromValue(map['uid'] as String),
    );
  }
}

