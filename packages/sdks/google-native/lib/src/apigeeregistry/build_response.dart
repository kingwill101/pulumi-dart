// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Build information of the Instance if it's in `ACTIVE` state.
class BuildResponse {
  /// Commit ID of the latest commit in the build.
  final pulumi.Input<String> commitId;

  /// Commit time of the latest commit in the build.
  final pulumi.Input<String> commitTime;

  /// Path of the open source repository: github.com/apigee/registry.
  final pulumi.Input<String> repo;

  /// Creates a new [BuildResponse].
  /// [commitId] Commit ID of the latest commit in the build.
  /// [commitTime] Commit time of the latest commit in the build.
  /// [repo] Path of the open source repository: github.com/apigee/registry.
  BuildResponse({
    required this.commitId,
    required this.commitTime,
    required this.repo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitId': commitId,
      'commitTime': commitTime,
      'repo': repo,
    };
  }

  factory BuildResponse.fromMap(Map<String, dynamic> map) {
    return BuildResponse(
      commitId: pulumi.Input.fromValue(map['commitId'] as String),
      commitTime: pulumi.Input.fromValue(map['commitTime'] as String),
      repo: pulumi.Input.fromValue(map['repo'] as String),
    );
  }
}
