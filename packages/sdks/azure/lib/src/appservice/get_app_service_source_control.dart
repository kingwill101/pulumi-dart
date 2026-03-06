// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppServiceSourceControl {
  /// The branch of the remote repository in use.
  final pulumi.Input<String> branch;
  /// Limits to manual integration.
  final pulumi.Input<bool> manualIntegration;
  /// The URL of the source code repository.
  final pulumi.Input<String> repoUrl;
  /// Is roll-back enabled for the repository.
  final pulumi.Input<bool> rollbackEnabled;
  /// Uses Mercurial if `true`, otherwise uses Git.
  final pulumi.Input<bool> useMercurial;

  /// Creates a new [GetAppServiceSourceControl].
  /// [branch] The branch of the remote repository in use.
  /// [manualIntegration] Limits to manual integration.
  /// [repoUrl] The URL of the source code repository.
  /// [rollbackEnabled] Is roll-back enabled for the repository.
  /// [useMercurial] Uses Mercurial if `true`, otherwise uses Git.
  const GetAppServiceSourceControl({
    required this.branch,
    required this.manualIntegration,
    required this.repoUrl,
    required this.rollbackEnabled,
    required this.useMercurial,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': branch,
      'manualIntegration': manualIntegration,
      'repoUrl': repoUrl,
      'rollbackEnabled': rollbackEnabled,
      'useMercurial': useMercurial,
    };
  }

  factory GetAppServiceSourceControl.fromMap(Map<String, dynamic> map) {
    return GetAppServiceSourceControl(
      branch: pulumi.Input.fromValue(map['branch'] as String),
      manualIntegration: pulumi.Input.fromValue(map['manualIntegration'] as bool),
      repoUrl: pulumi.Input.fromValue(map['repoUrl'] as String),
      rollbackEnabled: pulumi.Input.fromValue(map['rollbackEnabled'] as bool),
      useMercurial: pulumi.Input.fromValue(map['useMercurial'] as bool),
    );
  }
}

