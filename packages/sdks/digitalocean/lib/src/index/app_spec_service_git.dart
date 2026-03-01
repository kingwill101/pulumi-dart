// ignore_for_file: unused_element, unnecessary_cast


class AppSpecServiceGit {
  /// The name of the branch to use.
  final String? branch;
  /// The clone URL of the repo.
  final String? repoCloneUrl;

  /// Creates a new [AppSpecServiceGit].
  /// [branch] The name of the branch to use.
  /// [repoCloneUrl] The clone URL of the repo.
  AppSpecServiceGit({
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
      branch: map['branch'] == null ? null : map['branch'] as String,
      repoCloneUrl: map['repoCloneUrl'] == null ? null : map['repoCloneUrl'] as String,
    );
  }
}

