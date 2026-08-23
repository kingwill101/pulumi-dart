// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_context_response.dart';
import 'repo_id_response.dart';

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud Source Repo.
class CloudRepoSourceContextResponse {
  /// An alias, which may be a branch or tag.
  final pulumi.Input<AliasContextResponse> aliasContext;
  /// The ID of the repo.
  final pulumi.Input<RepoIdResponse> repoId;
  /// A revision ID.
  final pulumi.Input<String> revisionId;

  /// Creates a new [CloudRepoSourceContextResponse].
  /// [aliasContext] An alias, which may be a branch or tag.
  /// [repoId] The ID of the repo.
  /// [revisionId] A revision ID.
  const CloudRepoSourceContextResponse({
    required this.aliasContext,
    required this.repoId,
    required this.revisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasContext': pulumi.Input.mapInputValue<AliasContextResponse, Map<String, dynamic>>(aliasContext, (value) => value.toMap()),
      'repoId': pulumi.Input.mapInputValue<RepoIdResponse, Map<String, dynamic>>(repoId, (value) => value.toMap()),
      'revisionId': revisionId,
    };
  }

  factory CloudRepoSourceContextResponse.fromMap(Map<String, dynamic> map) {
    return CloudRepoSourceContextResponse(
      aliasContext: pulumi.Input.fromValue(AliasContextResponse.fromMap((map['aliasContext']! as Map).cast<String, dynamic>())),
      repoId: pulumi.Input.fromValue(RepoIdResponse.fromMap((map['repoId']! as Map).cast<String, dynamic>())),
      revisionId: pulumi.Input.fromValue(map['revisionId'] as String),
    );
  }
}
