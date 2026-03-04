// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The GitHub action code configuration.
class GitHubActionCodeConfiguration {
  /// Runtime stack is used to determine the workflow file content for code base apps.
  final pulumi.Input<String>? runtimeStack;

  /// Runtime version is used to determine what build version to set in the workflow file.
  final pulumi.Input<String>? runtimeVersion;

  /// Creates a new [GitHubActionCodeConfiguration].
  /// [runtimeStack] Runtime stack is used to determine the workflow file content for code base apps.
  /// [runtimeVersion] Runtime version is used to determine what build version to set in the workflow file.
  GitHubActionCodeConfiguration({this.runtimeStack, this.runtimeVersion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runtimeStack': ?runtimeStack,
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory GitHubActionCodeConfiguration.fromMap(Map<String, dynamic> map) {
    return GitHubActionCodeConfiguration(
      runtimeStack: (() {
        final guardedValue = map['runtimeStack'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      runtimeVersion: (() {
        final guardedValue = map['runtimeVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
