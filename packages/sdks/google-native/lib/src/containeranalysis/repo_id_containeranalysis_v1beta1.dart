// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_repo_id_containeranalysis_v1beta1.dart';

/// A unique identifier for a Cloud Repo.
class RepoIdContaineranalysisV1beta1 {
  /// A combination of a project ID and a repo name.
  final pulumi.Input<ProjectRepoIdContaineranalysisV1beta1>? projectRepoId;

  /// A server-assigned, globally unique identifier.
  final pulumi.Input<String>? uid;

  /// Creates a new [RepoIdContaineranalysisV1beta1].
  /// [projectRepoId] A combination of a project ID and a repo name.
  /// [uid] A server-assigned, globally unique identifier.
  RepoIdContaineranalysisV1beta1({this.projectRepoId, this.uid});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectRepoId':
          ?pulumi.Input.mapOptionalInputValue<
            ProjectRepoIdContaineranalysisV1beta1,
            Map<String, dynamic>
          >(projectRepoId, (value) => value.toMap()),
      'uid': ?uid,
    };
  }

  factory RepoIdContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return RepoIdContaineranalysisV1beta1(
      projectRepoId: (() {
        final guardedValue = map['projectRepoId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProjectRepoIdContaineranalysisV1beta1.fromMap(
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
