// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecFunctionGit {
  /// The name of the branch to use.
  final String? branch;
  /// The clone URL of the repo.
  final String? repoCloneUrl;

  /// Creates a new [GetAppSpecFunctionGit].
  /// [branch] The name of the branch to use.
  /// [repoCloneUrl] The clone URL of the repo.
  GetAppSpecFunctionGit({
    this.branch,
    this.repoCloneUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'repoCloneUrl': ?repoCloneUrl,
    };
  }

  factory GetAppSpecFunctionGit.fromMap(Map<String, dynamic> map) {
    return GetAppSpecFunctionGit(
      branch: map['branch'] == null ? null : map['branch'] as String,
      repoCloneUrl: map['repoCloneUrl'] == null ? null : map['repoCloneUrl'] as String,
    );
  }
}

