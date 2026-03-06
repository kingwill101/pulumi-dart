// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_context_response_containeranalysis_v1beta1.dart';
import 'repo_id_response_containeranalysis_v1beta1.dart';

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud Source Repo.
class CloudRepoSourceContextResponseContaineranalysisV1beta1 {
  /// An alias, which may be a branch or tag.
  final pulumi.Input<AliasContextResponseContaineranalysisV1beta1> aliasContext;
  /// The ID of the repo.
  final pulumi.Input<RepoIdResponseContaineranalysisV1beta1> repoId;
  /// A revision ID.
  final pulumi.Input<String> revisionId;

  /// Creates a new [CloudRepoSourceContextResponseContaineranalysisV1beta1].
  /// [aliasContext] An alias, which may be a branch or tag.
  /// [repoId] The ID of the repo.
  /// [revisionId] A revision ID.
  const CloudRepoSourceContextResponseContaineranalysisV1beta1({
    required this.aliasContext,
    required this.repoId,
    required this.revisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasContext': pulumi.Input.mapInputValue<AliasContextResponseContaineranalysisV1beta1, Map<String, dynamic>>(aliasContext, (value) => value.toMap()),
      'repoId': pulumi.Input.mapInputValue<RepoIdResponseContaineranalysisV1beta1, Map<String, dynamic>>(repoId, (value) => value.toMap()),
      'revisionId': revisionId,
    };
  }

  factory CloudRepoSourceContextResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return CloudRepoSourceContextResponseContaineranalysisV1beta1(
      aliasContext: pulumi.Input.fromValue(AliasContextResponseContaineranalysisV1beta1.fromMap((map['aliasContext']! as Map).cast<String, dynamic>())),
      repoId: pulumi.Input.fromValue(RepoIdResponseContaineranalysisV1beta1.fromMap((map['repoId']! as Map).cast<String, dynamic>())),
      revisionId: pulumi.Input.fromValue(map['revisionId'] as String),
    );
  }
}

