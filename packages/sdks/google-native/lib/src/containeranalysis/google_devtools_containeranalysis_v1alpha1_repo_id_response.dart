// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_containeranalysis_v1alpha1_project_repo_id_response.dart';

/// A unique identifier for a Cloud Repo.
class GoogleDevtoolsContaineranalysisV1alpha1RepoIdResponse {
  /// A combination of a project ID and a repo name.
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoIdResponse> projectRepoId;
  /// A server-assigned, globally unique identifier.
  final pulumi.Input<String> uid;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1RepoIdResponse].
  /// [projectRepoId] A combination of a project ID and a repo name.
  /// [uid] A server-assigned, globally unique identifier.
  GoogleDevtoolsContaineranalysisV1alpha1RepoIdResponse({
    required this.projectRepoId,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectRepoId': pulumi.Input.mapInputValue<GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoIdResponse, Map<String, dynamic>>(projectRepoId, (value) => value.toMap()),
      'uid': uid,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1RepoIdResponse.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1RepoIdResponse(
      projectRepoId: pulumi.Input.fromValue(GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoIdResponse.fromMap((map['projectRepoId']! as Map).cast<String, dynamic>())),
      uid: pulumi.Input.fromValue(map['uid'] as String),
    );
  }
}

