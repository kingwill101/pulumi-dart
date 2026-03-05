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
      aliasContext: (() { final guardedValue = map['aliasContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AliasContextContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      repoId: (() { final guardedValue = map['repoId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepoIdContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      revisionId: (() { final guardedValue = map['revisionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

