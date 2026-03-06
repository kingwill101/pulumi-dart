// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionAppSourceControl {
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

  /// Creates a new [FunctionAppSourceControl].
  /// [branch] The branch of the remote repository to use. Defaults to 'master'.
  /// [manualIntegration] Limits to manual integration. Defaults to `false` if not specified.
  /// [repoUrl] The URL of the source code repository.
  /// [rollbackEnabled] Enable roll-back for the repository. Defaults to `false` if not specified.
  /// [useMercurial] Use Mercurial if `true`, otherwise uses Git.
  const FunctionAppSourceControl({
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

  factory FunctionAppSourceControl.fromMap(Map<String, dynamic> map) {
    return FunctionAppSourceControl(
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manualIntegration: (() { final guardedValue = map['manualIntegration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      repoUrl: (() { final guardedValue = map['repoUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rollbackEnabled: (() { final guardedValue = map['rollbackEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useMercurial: (() { final guardedValue = map['useMercurial']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

