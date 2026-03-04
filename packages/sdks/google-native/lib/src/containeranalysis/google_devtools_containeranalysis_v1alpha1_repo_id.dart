// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_containeranalysis_v1alpha1_project_repo_id.dart';

/// A unique identifier for a Cloud Repo.
class GoogleDevtoolsContaineranalysisV1alpha1RepoId {
  /// A combination of a project ID and a repo name.
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId>?
  projectRepoId;

  /// A server-assigned, globally unique identifier.
  final pulumi.Input<String>? uid;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1RepoId].
  /// [projectRepoId] A combination of a project ID and a repo name.
  /// [uid] A server-assigned, globally unique identifier.
  GoogleDevtoolsContaineranalysisV1alpha1RepoId({this.projectRepoId, this.uid});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectRepoId':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId,
            Map<String, dynamic>
          >(projectRepoId, (value) => value.toMap()),
      'uid': ?uid,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1RepoId.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleDevtoolsContaineranalysisV1alpha1RepoId(
      projectRepoId: (() {
        final guardedValue = map['projectRepoId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      uid: (() {
        final guardedValue = map['uid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
