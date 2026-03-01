// ignore_for_file: unused_element, unnecessary_cast


class AppSpecServiceBitbucket {
  /// The name of the branch to use.
  final String? branch;
  /// Whether to automatically deploy new commits made to the repo.
  final bool? deployOnPush;
  /// The name of the repo in the format `owner/repo`.
  final String? repo;

  /// Creates a new [AppSpecServiceBitbucket].
  /// [branch] The name of the branch to use.
  /// [deployOnPush] Whether to automatically deploy new commits made to the repo.
  /// [repo] The name of the repo in the format `owner/repo`.
  AppSpecServiceBitbucket({
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

  factory AppSpecServiceBitbucket.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceBitbucket(
      branch: map['branch'] == null ? null : map['branch'] as String,
      deployOnPush: map['deployOnPush'] == null ? null : map['deployOnPush'] as bool,
      repo: map['repo'] == null ? null : map['repo'] as String,
    );
  }
}

