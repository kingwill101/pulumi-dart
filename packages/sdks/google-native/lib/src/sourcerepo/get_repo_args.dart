// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sourcerepo_v1_get_repo_args_doc}
/// Arguments for getRepo.
/// {@endtemplate}
/// {@macro pulumi_sourcerepo_v1_get_repo_args_doc}
class GetRepoArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repoId;

  /// Creates a new [GetRepoArgs].
  /// [project] Optional.
  /// [repoId] Required.
  GetRepoArgs({this.project, required this.repoId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project, 'repoId': repoId};
  }

  factory GetRepoArgs.fromMap(Map<String, dynamic> map) {
    return GetRepoArgs(
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repoId: pulumi.Input.fromValue(map['repoId'] as String),
    );
  }
}
