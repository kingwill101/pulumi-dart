// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The GitHub action code configuration.
class GitHubActionCodeConfigurationResponse {
  /// Runtime stack is used to determine the workflow file content for code base apps.
  final pulumi.Input<String>? runtimeStack;
  /// Runtime version is used to determine what build version to set in the workflow file.
  final pulumi.Input<String>? runtimeVersion;

  /// Creates a new [GitHubActionCodeConfigurationResponse].
  /// [runtimeStack] Runtime stack is used to determine the workflow file content for code base apps.
  /// [runtimeVersion] Runtime version is used to determine what build version to set in the workflow file.
  GitHubActionCodeConfigurationResponse({
    this.runtimeStack,
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runtimeStack': ?runtimeStack,
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory GitHubActionCodeConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return GitHubActionCodeConfigurationResponse(
      runtimeStack: map['runtimeStack'] == null ? null : (map['runtimeStack'] as String).input(),
      runtimeVersion: map['runtimeVersion'] == null ? null : (map['runtimeVersion'] as String).input(),
    );
  }
}

