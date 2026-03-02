// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecJobGit {
  /// The name of the branch to use.
  final pulumi.Input<String>? branch;
  /// The clone URL of the repo.
  final pulumi.Input<String>? repoCloneUrl;

  /// Creates a new [GetAppSpecJobGit].
  /// [branch] The name of the branch to use.
  /// [repoCloneUrl] The clone URL of the repo.
  GetAppSpecJobGit({
    this.branch,
    this.repoCloneUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'repoCloneUrl': ?repoCloneUrl,
    };
  }

  factory GetAppSpecJobGit.fromMap(Map<String, dynamic> map) {
    return GetAppSpecJobGit(
      branch: map['branch'] == null ? null : (map['branch']! as String).input(),
      repoCloneUrl: map['repoCloneUrl'] == null ? null : (map['repoCloneUrl']! as String).input(),
    );
  }
}

