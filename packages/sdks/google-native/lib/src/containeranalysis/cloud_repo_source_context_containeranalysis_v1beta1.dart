// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_context_containeranalysis_v1beta1.dart';
import 'repo_id_containeranalysis_v1beta1.dart';

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud Source Repo.
class CloudRepoSourceContextContaineranalysisV1beta1 {
  /// An alias, which may be a branch or tag.
  final pulumi.Input<AliasContextContaineranalysisV1beta1>? aliasContext;
  /// The ID of the repo.
  final pulumi.Input<RepoIdContaineranalysisV1beta1>? repoId;
  /// A revision ID.
  final pulumi.Input<String>? revisionId;

  /// Creates a new [CloudRepoSourceContextContaineranalysisV1beta1].
  /// [aliasContext] An alias, which may be a branch or tag.
  /// [repoId] The ID of the repo.
  /// [revisionId] A revision ID.
  CloudRepoSourceContextContaineranalysisV1beta1({
    this.aliasContext,
    this.repoId,
    this.revisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasContext': ?pulumi.Input.mapOptionalInputValue<AliasContextContaineranalysisV1beta1, Map<String, dynamic>>(aliasContext, (value) => value.toMap()),
      'repoId': ?pulumi.Input.mapOptionalInputValue<RepoIdContaineranalysisV1beta1, Map<String, dynamic>>(repoId, (value) => value.toMap()),
      'revisionId': ?revisionId,
    };
  }

  factory CloudRepoSourceContextContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return CloudRepoSourceContextContaineranalysisV1beta1(
      aliasContext: map['aliasContext'] == null ? null : (AliasContextContaineranalysisV1beta1.fromMap((map['aliasContext']! as Map).cast<String, dynamic>())).input(),
      repoId: map['repoId'] == null ? null : (RepoIdContaineranalysisV1beta1.fromMap((map['repoId']! as Map).cast<String, dynamic>())).input(),
      revisionId: map['revisionId'] == null ? null : (map['revisionId']! as String).input(),
    );
  }
}

