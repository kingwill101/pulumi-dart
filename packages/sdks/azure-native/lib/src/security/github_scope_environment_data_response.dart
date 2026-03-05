// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The github scope connector's environment data
class GithubScopeEnvironmentDataResponse {
  /// The type of the environment data.
  /// Expected value is 'GithubScope'.
  final pulumi.Input<String> environmentType;

  /// Creates a new [GithubScopeEnvironmentDataResponse].
  /// [environmentType] The type of the environment data.
  GithubScopeEnvironmentDataResponse({
    required this.environmentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentType': environmentType,
    };
  }

  factory GithubScopeEnvironmentDataResponse.fromMap(Map<String, dynamic> map) {
    return GithubScopeEnvironmentDataResponse(
      environmentType: pulumi.Input.fromValue(map['environmentType'] as String),
    );
  }
}

