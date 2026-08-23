// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecServiceGit {
  /// The name of the branch to use.
  final pulumi.Input<String>? branch;
  /// The clone URL of the repo.
  final pulumi.Input<String>? repoCloneUrl;

  /// Creates a new [AppSpecServiceGit].
  /// [branch] The name of the branch to use.
  /// [repoCloneUrl] The clone URL of the repo.
  const AppSpecServiceGit({
    this.branch,
    this.repoCloneUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'repoCloneUrl': ?repoCloneUrl,
    };
  }

  factory AppSpecServiceGit.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceGit(
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repoCloneUrl: (() { final guardedValue = map['repoCloneUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
