// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_containeranalysis_v1alpha1_alias_context_response.dart';
import 'google_devtools_containeranalysis_v1alpha1_repo_id_response.dart';

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud Source Repo.
class GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContextResponse {
  /// An alias, which may be a branch or tag.
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1AliasContextResponse> aliasContext;
  /// The ID of the repo.
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1RepoIdResponse> repoId;
  /// A revision ID.
  final pulumi.Input<String> revisionId;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContextResponse].
  /// [aliasContext] An alias, which may be a branch or tag.
  /// [repoId] The ID of the repo.
  /// [revisionId] A revision ID.
  const GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContextResponse({
    required this.aliasContext,
    required this.repoId,
    required this.revisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasContext': pulumi.Input.mapInputValue<GoogleDevtoolsContaineranalysisV1alpha1AliasContextResponse, Map<String, dynamic>>(aliasContext, (value) => value.toMap()),
      'repoId': pulumi.Input.mapInputValue<GoogleDevtoolsContaineranalysisV1alpha1RepoIdResponse, Map<String, dynamic>>(repoId, (value) => value.toMap()),
      'revisionId': revisionId,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContextResponse.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContextResponse(
      aliasContext: pulumi.Input.fromValue(GoogleDevtoolsContaineranalysisV1alpha1AliasContextResponse.fromMap((map['aliasContext']! as Map).cast<String, dynamic>())),
      repoId: pulumi.Input.fromValue(GoogleDevtoolsContaineranalysisV1alpha1RepoIdResponse.fromMap((map['repoId']! as Map).cast<String, dynamic>())),
      revisionId: pulumi.Input.fromValue(map['revisionId'] as String),
    );
  }
}

