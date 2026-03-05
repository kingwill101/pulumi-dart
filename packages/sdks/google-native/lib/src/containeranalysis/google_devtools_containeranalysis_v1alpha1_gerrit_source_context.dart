// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_containeranalysis_v1alpha1_alias_context.dart';

/// A SourceContext referring to a Gerrit project.
class GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext {
  /// An alias, which may be a branch or tag.
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1AliasContext>? aliasContext;
  /// The full project name within the host. Projects may be nested, so "project/subproject" is a valid project name. The "repo name" is the hostURI/project.
  final pulumi.Input<String>? gerritProject;
  /// The URI of a running Gerrit instance.
  final pulumi.Input<String>? hostUri;
  /// A revision (commit) ID.
  final pulumi.Input<String>? revisionId;

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
      'aliasContext': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsContaineranalysisV1alpha1AliasContext, Map<String, dynamic>>(aliasContext, (value) => value.toMap()),
      'gerritProject': ?gerritProject,
      'hostUri': ?hostUri,
      'revisionId': ?revisionId,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext(
      aliasContext: (() { final guardedValue = map['aliasContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDevtoolsContaineranalysisV1alpha1AliasContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gerritProject: (() { final guardedValue = map['gerritProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostUri: (() { final guardedValue = map['hostUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revisionId: (() { final guardedValue = map['revisionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

