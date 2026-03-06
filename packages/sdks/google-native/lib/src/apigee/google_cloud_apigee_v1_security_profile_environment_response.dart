// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Environment information of attached environments. Scoring an environment is enabled only if it is attached to a security profile.
class GoogleCloudApigeeV1SecurityProfileEnvironmentResponse {
  /// Time at which environment was attached to the security profile.
  final pulumi.Input<String> attachTime;
  /// Name of the environment.
  final pulumi.Input<String> environment;

  /// Creates a new [GoogleCloudApigeeV1SecurityProfileEnvironmentResponse].
  /// [attachTime] Time at which environment was attached to the security profile.
  /// [environment] Name of the environment.
  const GoogleCloudApigeeV1SecurityProfileEnvironmentResponse({
    required this.attachTime,
    required this.environment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachTime': attachTime,
      'environment': environment,
    };
  }

  factory GoogleCloudApigeeV1SecurityProfileEnvironmentResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1SecurityProfileEnvironmentResponse(
      attachTime: pulumi.Input.fromValue(map['attachTime'] as String),
      environment: pulumi.Input.fromValue(map['environment'] as String),
    );
  }
}

