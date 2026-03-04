// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_context.dart';

/// A SourceContext referring to a Gerrit project.
class GerritSourceContext {
  /// An alias, which may be a branch or tag.
  final pulumi.Input<AliasContext>? aliasContext;

  /// The full project name within the host. Projects may be nested, so "project/subproject" is a valid project name. The "repo name" is the hostURI/project.
  final pulumi.Input<String>? gerritProject;

  /// The URI of a running Gerrit instance.
  final pulumi.Input<String>? hostUri;

  /// A revision (commit) ID.
  final pulumi.Input<String>? revisionId;

  /// Creates a new [GerritSourceContext].
  /// [aliasContext] An alias, which may be a branch or tag.
  /// [gerritProject] The full project name within the host. Projects may be nested, so "project/subproject" is a valid project name. The "repo name" is the hostURI/project.
  /// [hostUri] The URI of a running Gerrit instance.
  /// [revisionId] A revision (commit) ID.
  GerritSourceContext({
    this.aliasContext,
    this.gerritProject,
    this.hostUri,
    this.revisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasContext':
          ?pulumi.Input.mapOptionalInputValue<
            AliasContext,
            Map<String, dynamic>
          >(aliasContext, (value) => value.toMap()),
      'gerritProject': ?gerritProject,
      'hostUri': ?hostUri,
      'revisionId': ?revisionId,
    };
  }

  factory GerritSourceContext.fromMap(Map<String, dynamic> map) {
    return GerritSourceContext(
      aliasContext: (() {
        final guardedValue = map['aliasContext'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AliasContext.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      gerritProject: (() {
        final guardedValue = map['gerritProject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostUri: (() {
        final guardedValue = map['hostUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      revisionId: (() {
        final guardedValue = map['revisionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
