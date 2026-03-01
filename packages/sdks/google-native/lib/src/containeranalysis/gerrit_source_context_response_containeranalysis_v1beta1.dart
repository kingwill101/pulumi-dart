// ignore_for_file: unused_element, unnecessary_cast

import 'alias_context_response_containeranalysis_v1beta1.dart';

/// A SourceContext referring to a Gerrit project.
class GerritSourceContextResponseContaineranalysisV1beta1 {
  /// An alias, which may be a branch or tag.
  final AliasContextResponseContaineranalysisV1beta1 aliasContext;
  /// The full project name within the host. Projects may be nested, so "project/subproject" is a valid project name. The "repo name" is the hostURI/project.
  final String gerritProject;
  /// The URI of a running Gerrit instance.
  final String hostUri;
  /// A revision (commit) ID.
  final String revisionId;

  /// Creates a new [GerritSourceContextResponseContaineranalysisV1beta1].
  /// [aliasContext] An alias, which may be a branch or tag.
  /// [gerritProject] The full project name within the host. Projects may be nested, so "project/subproject" is a valid project name. The "repo name" is the hostURI/project.
  /// [hostUri] The URI of a running Gerrit instance.
  /// [revisionId] A revision (commit) ID.
  GerritSourceContextResponseContaineranalysisV1beta1({
    required this.aliasContext,
    required this.gerritProject,
    required this.hostUri,
    required this.revisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasContext': aliasContext.toMap(),
      'gerritProject': gerritProject,
      'hostUri': hostUri,
      'revisionId': revisionId,
    };
  }

  factory GerritSourceContextResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return GerritSourceContextResponseContaineranalysisV1beta1(
      aliasContext: AliasContextResponseContaineranalysisV1beta1.fromMap((map['aliasContext'] as Map).cast<String, dynamic>()),
      gerritProject: map['gerritProject'] as String,
      hostUri: map['hostUri'] as String,
      revisionId: map['revisionId'] as String,
    );
  }
}

