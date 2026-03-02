// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppServiceSourceControl {
  /// The branch of the remote repository to use. Defaults to 'master'.
  final pulumi.Input<String>? branch;
  /// Limits to manual integration. Defaults to `false` if not specified.
  final pulumi.Input<bool>? manualIntegration;
  /// The URL of the source code repository.
  final pulumi.Input<String>? repoUrl;
  /// Enable roll-back for the repository. Defaults to `false` if not specified.
  final pulumi.Input<bool>? rollbackEnabled;
  /// Use Mercurial if `true`, otherwise uses Git.
  final pulumi.Input<bool>? useMercurial;

  /// Creates a new [AppServiceSourceControl].
  /// [branch] The branch of the remote repository to use. Defaults to 'master'.
  /// [manualIntegration] Limits to manual integration. Defaults to `false` if not specified.
  /// [repoUrl] The URL of the source code repository.
  /// [rollbackEnabled] Enable roll-back for the repository. Defaults to `false` if not specified.
  /// [useMercurial] Use Mercurial if `true`, otherwise uses Git.
  AppServiceSourceControl({
    this.branch,
    this.manualIntegration,
    this.repoUrl,
    this.rollbackEnabled,
    this.useMercurial,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'manualIntegration': ?manualIntegration,
      'repoUrl': ?repoUrl,
      'rollbackEnabled': ?rollbackEnabled,
      'useMercurial': ?useMercurial,
    };
  }

  factory AppServiceSourceControl.fromMap(Map<String, dynamic> map) {
    return AppServiceSourceControl(
      branch: map['branch'] == null ? null : (map['branch'] as String).input(),
      manualIntegration: map['manualIntegration'] == null ? null : (map['manualIntegration'] as bool).input(),
      repoUrl: map['repoUrl'] == null ? null : (map['repoUrl'] as String).input(),
      rollbackEnabled: map['rollbackEnabled'] == null ? null : (map['rollbackEnabled'] as bool).input(),
      useMercurial: map['useMercurial'] == null ? null : (map['useMercurial'] as bool).input(),
    );
  }
}

