// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resources created in GitHub repository.
class GitHubResourceInfoResponse {
  /// GitHub application installation id.
  final pulumi.Input<String>? appInstallationId;

  /// Creates a new [GitHubResourceInfoResponse].
  /// [appInstallationId] GitHub application installation id.
  const GitHubResourceInfoResponse({
    this.appInstallationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInstallationId': ?appInstallationId,
    };
  }

  factory GitHubResourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return GitHubResourceInfoResponse(
      appInstallationId: (() { final guardedValue = map['appInstallationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
