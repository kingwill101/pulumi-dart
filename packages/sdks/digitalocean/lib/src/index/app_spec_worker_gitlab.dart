// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecWorkerGitlab {
  /// The name of the branch to use.
  final pulumi.Input<String>? branch;
  /// Whether to automatically deploy new commits made to the repo.
  final pulumi.Input<bool>? deployOnPush;
  /// The name of the repo in the format `owner/repo`.
  final pulumi.Input<String>? repo;

  /// Creates a new [AppSpecWorkerGitlab].
  /// [branch] The name of the branch to use.
  /// [deployOnPush] Whether to automatically deploy new commits made to the repo.
  /// [repo] The name of the repo in the format `owner/repo`.
  const AppSpecWorkerGitlab({
    this.branch,
    this.deployOnPush,
    this.repo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'deployOnPush': ?deployOnPush,
      'repo': ?repo,
    };
  }

  factory AppSpecWorkerGitlab.fromMap(Map<String, dynamic> map) {
    return AppSpecWorkerGitlab(
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deployOnPush: (() { final guardedValue = map['deployOnPush']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      repo: (() { final guardedValue = map['repo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

