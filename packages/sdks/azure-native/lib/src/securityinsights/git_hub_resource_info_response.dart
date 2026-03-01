// ignore_for_file: unused_element, unnecessary_cast


/// Resources created in GitHub repository.
class GitHubResourceInfoResponse {
  /// GitHub application installation id.
  final String? appInstallationId;

  /// Creates a new [GitHubResourceInfoResponse].
  /// [appInstallationId] GitHub application installation id.
  GitHubResourceInfoResponse({
    this.appInstallationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInstallationId': ?appInstallationId,
    };
  }

  factory GitHubResourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return GitHubResourceInfoResponse(
      appInstallationId: map['appInstallationId'] == null ? null : map['appInstallationId'] as String,
    );
  }
}

