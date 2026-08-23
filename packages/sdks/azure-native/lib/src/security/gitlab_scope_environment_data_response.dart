// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The GitLab scope connector's environment data
class GitlabScopeEnvironmentDataResponse {
  /// The type of the environment data.
  /// Expected value is 'GitlabScope'.
  final pulumi.Input<String> environmentType;

  /// Creates a new [GitlabScopeEnvironmentDataResponse].
  /// [environmentType] The type of the environment data.
  const GitlabScopeEnvironmentDataResponse({
    required this.environmentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentType': environmentType,
    };
  }

  factory GitlabScopeEnvironmentDataResponse.fromMap(Map<String, dynamic> map) {
    return GitlabScopeEnvironmentDataResponse(
      environmentType: pulumi.Input.fromValue(map['environmentType'] as String),
    );
  }
}
