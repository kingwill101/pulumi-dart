// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_context_containeranalysis_v1beta1.dart';

/// A SourceContext referring to a Gerrit project.
class GerritSourceContextContaineranalysisV1beta1 {
  /// An alias, which may be a branch or tag.
  final pulumi.Input<AliasContextContaineranalysisV1beta1>? aliasContext;
  /// The full project name within the host. Projects may be nested, so "project/subproject" is a valid project name. The "repo name" is the hostURI/project.
  final pulumi.Input<String>? gerritProject;
  /// The URI of a running Gerrit instance.
  final pulumi.Input<String>? hostUri;
  /// A revision (commit) ID.
  final pulumi.Input<String>? revisionId;

  /// Creates a new [GerritSourceContextContaineranalysisV1beta1].
  /// [aliasContext] An alias, which may be a branch or tag.
  /// [gerritProject] The full project name within the host. Projects may be nested, so "project/subproject" is a valid project name. The "repo name" is the hostURI/project.
  /// [hostUri] The URI of a running Gerrit instance.
  /// [revisionId] A revision (commit) ID.
  GerritSourceContextContaineranalysisV1beta1({
    this.aliasContext,
    this.gerritProject,
    this.hostUri,
    this.revisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasContext': ?pulumi.Input.mapOptionalInputValue<AliasContextContaineranalysisV1beta1, Map<String, dynamic>>(aliasContext, (value) => value.toMap()),
      'gerritProject': ?gerritProject,
      'hostUri': ?hostUri,
      'revisionId': ?revisionId,
    };
  }

  factory GerritSourceContextContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return GerritSourceContextContaineranalysisV1beta1(
      aliasContext: map['aliasContext'] == null ? null : (AliasContextContaineranalysisV1beta1.fromMap((map['aliasContext']! as Map).cast<String, dynamic>())).input(),
      gerritProject: map['gerritProject'] == null ? null : (map['gerritProject']! as String).input(),
      hostUri: map['hostUri'] == null ? null : (map['hostUri']! as String).input(),
      revisionId: map['revisionId'] == null ? null : (map['revisionId']! as String).input(),
    );
  }
}

