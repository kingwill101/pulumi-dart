// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_context.dart';
import 'repo_id.dart';

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud Source Repo.
class CloudRepoSourceContext {
  /// An alias, which may be a branch or tag.
  final pulumi.Input<AliasContext>? aliasContext;
  /// The ID of the repo.
  final pulumi.Input<RepoId>? repoId;
  /// A revision ID.
  final pulumi.Input<String>? revisionId;

  /// Creates a new [CloudRepoSourceContext].
  /// [aliasContext] An alias, which may be a branch or tag.
  /// [repoId] The ID of the repo.
  /// [revisionId] A revision ID.
  CloudRepoSourceContext({
    this.aliasContext,
    this.repoId,
    this.revisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasContext': ?pulumi.Input.mapOptionalInputValue<AliasContext, Map<String, dynamic>>(aliasContext, (value) => value.toMap()),
      'repoId': ?pulumi.Input.mapOptionalInputValue<RepoId, Map<String, dynamic>>(repoId, (value) => value.toMap()),
      'revisionId': ?revisionId,
    };
  }

  factory CloudRepoSourceContext.fromMap(Map<String, dynamic> map) {
    return CloudRepoSourceContext(
      aliasContext: map['aliasContext'] == null ? null : (AliasContext.fromMap((map['aliasContext'] as Map).cast<String, dynamic>())).input(),
      repoId: map['repoId'] == null ? null : (RepoId.fromMap((map['repoId'] as Map).cast<String, dynamic>())).input(),
      revisionId: map['revisionId'] == null ? null : (map['revisionId'] as String).input(),
    );
  }
}

