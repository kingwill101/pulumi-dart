// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The GitLab scope connector's environment data
class GitlabScopeEnvironmentData {
  /// The type of the environment data.
  /// Expected value is 'GitlabScope'.
  final pulumi.Input<String> environmentType;

  /// Creates a new [GitlabScopeEnvironmentData].
  /// [environmentType] The type of the environment data.
  GitlabScopeEnvironmentData({
    required this.environmentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentType': environmentType,
    };
  }

  factory GitlabScopeEnvironmentData.fromMap(Map<String, dynamic> map) {
    return GitlabScopeEnvironmentData(
      environmentType: (map['environmentType'] as String).input(),
    );
  }
}

