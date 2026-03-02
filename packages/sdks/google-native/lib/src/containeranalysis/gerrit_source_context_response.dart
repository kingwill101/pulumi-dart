// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_context_response.dart';

/// A SourceContext referring to a Gerrit project.
class GerritSourceContextResponse {
  /// An alias, which may be a branch or tag.
  final pulumi.Input<AliasContextResponse> aliasContext;
  /// The full project name within the host. Projects may be nested, so "project/subproject" is a valid project name. The "repo name" is the hostURI/project.
  final pulumi.Input<String> gerritProject;
  /// The URI of a running Gerrit instance.
  final pulumi.Input<String> hostUri;
  /// A revision (commit) ID.
  final pulumi.Input<String> revisionId;

  /// Creates a new [GerritSourceContextResponse].
  /// [aliasContext] An alias, which may be a branch or tag.
  /// [gerritProject] The full project name within the host. Projects may be nested, so "project/subproject" is a valid project name. The "repo name" is the hostURI/project.
  /// [hostUri] The URI of a running Gerrit instance.
  /// [revisionId] A revision (commit) ID.
  GerritSourceContextResponse({
    required this.aliasContext,
    required this.gerritProject,
    required this.hostUri,
    required this.revisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasContext': pulumi.Input.mapInputValue<AliasContextResponse, Map<String, dynamic>>(aliasContext, (value) => value.toMap()),
      'gerritProject': gerritProject,
      'hostUri': hostUri,
      'revisionId': revisionId,
    };
  }

  factory GerritSourceContextResponse.fromMap(Map<String, dynamic> map) {
    return GerritSourceContextResponse(
      aliasContext: (AliasContextResponse.fromMap((map['aliasContext'] as Map).cast<String, dynamic>())).input(),
      gerritProject: (map['gerritProject'] as String).input(),
      hostUri: (map['hostUri'] as String).input(),
      revisionId: (map['revisionId'] as String).input(),
    );
  }
}

