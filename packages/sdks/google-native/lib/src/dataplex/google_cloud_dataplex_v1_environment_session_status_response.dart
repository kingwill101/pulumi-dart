// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of sessions created for this environment.
class GoogleCloudDataplexV1EnvironmentSessionStatusResponse {
  /// Queries over sessions to mark whether the environment is currently active or not
  final pulumi.Input<bool> active;

  /// Creates a new [GoogleCloudDataplexV1EnvironmentSessionStatusResponse].
  /// [active] Queries over sessions to mark whether the environment is currently active or not
  const GoogleCloudDataplexV1EnvironmentSessionStatusResponse({
    required this.active,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
    };
  }

  factory GoogleCloudDataplexV1EnvironmentSessionStatusResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1EnvironmentSessionStatusResponse(
      active: pulumi.Input.fromValue(map['active'] as bool),
    );
  }
}

