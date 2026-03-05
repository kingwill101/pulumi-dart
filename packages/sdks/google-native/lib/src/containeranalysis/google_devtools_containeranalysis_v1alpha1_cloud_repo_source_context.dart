// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_containeranalysis_v1alpha1_alias_context.dart';
import 'google_devtools_containeranalysis_v1alpha1_repo_id.dart';

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud Source Repo.
class GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext {
  /// An alias, which may be a branch or tag.
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1AliasContext>? aliasContext;
  /// The ID of the repo.
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1RepoId>? repoId;
  /// A revision ID.
  final pulumi.Input<String>? revisionId;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext].
  /// [aliasContext] An alias, which may be a branch or tag.
  /// [repoId] The ID of the repo.
  /// [revisionId] A revision ID.
  GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext({
    this.aliasContext,
    this.repoId,
    this.revisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasContext': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsContaineranalysisV1alpha1AliasContext, Map<String, dynamic>>(aliasContext, (value) => value.toMap()),
      'repoId': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsContaineranalysisV1alpha1RepoId, Map<String, dynamic>>(repoId, (value) => value.toMap()),
      'revisionId': ?revisionId,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext(
      aliasContext: (() { final guardedValue = map['aliasContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDevtoolsContaineranalysisV1alpha1AliasContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      repoId: (() { final guardedValue = map['repoId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDevtoolsContaineranalysisV1alpha1RepoId.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      revisionId: (() { final guardedValue = map['revisionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

