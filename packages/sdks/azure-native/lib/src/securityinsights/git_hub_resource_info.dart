// ignore_for_file: unused_element, unnecessary_cast


/// Resources created in GitHub repository.
class GitHubResourceInfo {
  /// GitHub application installation id.
  final String? appInstallationId;

  /// Creates a new [GitHubResourceInfo].
  /// [appInstallationId] GitHub application installation id.
  GitHubResourceInfo({
    this.appInstallationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInstallationId': ?appInstallationId,
    };
  }

  factory GitHubResourceInfo.fromMap(Map<String, dynamic> map) {
    return GitHubResourceInfo(
      appInstallationId: map['appInstallationId'] == null ? null : map['appInstallationId'] as String,
    );
  }
}

