// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecJobBitbucket {
  /// The name of the branch to use.
  final pulumi.Input<String>? branch;
  /// Whether to automatically deploy new commits made to the repo.
  final pulumi.Input<bool>? deployOnPush;
  /// The name of the repo in the format `owner/repo`.
  final pulumi.Input<String>? repo;

  /// Creates a new [AppSpecJobBitbucket].
  /// [branch] The name of the branch to use.
  /// [deployOnPush] Whether to automatically deploy new commits made to the repo.
  /// [repo] The name of the repo in the format `owner/repo`.
  AppSpecJobBitbucket({
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

  factory AppSpecJobBitbucket.fromMap(Map<String, dynamic> map) {
    return AppSpecJobBitbucket(
      branch: map['branch'] == null ? null : (map['branch'] as String).input(),
      deployOnPush: map['deployOnPush'] == null ? null : (map['deployOnPush'] as bool).input(),
      repo: map['repo'] == null ? null : (map['repo'] as String).input(),
    );
  }
}

