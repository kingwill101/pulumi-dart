// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_context_response_containeranalysis_v1beta1.dart';

/// A SourceContext referring to a Gerrit project.
class GerritSourceContextResponseContaineranalysisV1beta1 {
  /// An alias, which may be a branch or tag.
  final pulumi.Input<AliasContextResponseContaineranalysisV1beta1> aliasContext;
  /// The full project name within the host. Projects may be nested, so "project/subproject" is a valid project name. The "repo name" is the hostURI/project.
  final pulumi.Input<String> gerritProject;
  /// The URI of a running Gerrit instance.
  final pulumi.Input<String> hostUri;
  /// A revision (commit) ID.
  final pulumi.Input<String> revisionId;

  /// Creates a new [GerritSourceContextResponseContaineranalysisV1beta1].
  /// [aliasContext] An alias, which may be a branch or tag.
  /// [gerritProject] The full project name within the host. Projects may be nested, so "project/subproject" is a valid project name. The "repo name" is the hostURI/project.
  /// [hostUri] The URI of a running Gerrit instance.
  /// [revisionId] A revision (commit) ID.
  const GerritSourceContextResponseContaineranalysisV1beta1({
    required this.aliasContext,
    required this.gerritProject,
    required this.hostUri,
    required this.revisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasContext': pulumi.Input.mapInputValue<AliasContextResponseContaineranalysisV1beta1, Map<String, dynamic>>(aliasContext, (value) => value.toMap()),
      'gerritProject': gerritProject,
      'hostUri': hostUri,
      'revisionId': revisionId,
    };
  }

  factory GerritSourceContextResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return GerritSourceContextResponseContaineranalysisV1beta1(
      aliasContext: pulumi.Input.fromValue(AliasContextResponseContaineranalysisV1beta1.fromMap((map['aliasContext']! as Map).cast<String, dynamic>())),
      gerritProject: pulumi.Input.fromValue(map['gerritProject'] as String),
      hostUri: pulumi.Input.fromValue(map['hostUri'] as String),
      revisionId: pulumi.Input.fromValue(map['revisionId'] as String),
    );
  }
}

