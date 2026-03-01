// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_containeranalysis_v1alpha1_alias_context.dart';

/// A SourceContext referring to a Gerrit project.
class GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext {
  /// An alias, which may be a branch or tag.
  final GoogleDevtoolsContaineranalysisV1alpha1AliasContext? aliasContext;
  /// The full project name within the host. Projects may be nested, so "project/subproject" is a valid project name. The "repo name" is the hostURI/project.
  final String? gerritProject;
  /// The URI of a running Gerrit instance.
  final String? hostUri;
  /// A revision (commit) ID.
  final String? revisionId;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext].
  /// [aliasContext] An alias, which may be a branch or tag.
  /// [gerritProject] The full project name within the host. Projects may be nested, so "project/subproject" is a valid project name. The "repo name" is the hostURI/project.
  /// [hostUri] The URI of a running Gerrit instance.
  /// [revisionId] A revision (commit) ID.
  GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext({
    this.aliasContext,
    this.gerritProject,
    this.hostUri,
    this.revisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasContext': ?aliasContext == null ? null : aliasContext!.toMap(),
      'gerritProject': ?gerritProject,
      'hostUri': ?hostUri,
      'revisionId': ?revisionId,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext(
      aliasContext: map['aliasContext'] == null ? null : GoogleDevtoolsContaineranalysisV1alpha1AliasContext.fromMap((map['aliasContext'] as Map).cast<String, dynamic>()),
      gerritProject: map['gerritProject'] == null ? null : map['gerritProject'] as String,
      hostUri: map['hostUri'] == null ? null : map['hostUri'] as String,
      revisionId: map['revisionId'] == null ? null : map['revisionId'] as String,
    );
  }
}

