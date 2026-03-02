// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvironmentAddonsConfig resources.
class EnvironmentAddonsConfigState {
  /// Flag to enable/disable Analytics.
  final pulumi.Input<bool>? analyticsEnabled;
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final pulumi.Input<String>? envId;

  /// Creates a new [EnvironmentAddonsConfigState].
  /// [analyticsEnabled] Flag to enable/disable Analytics.
  /// [envId] The Apigee environment group associated with the Apigee environment,
  EnvironmentAddonsConfigState({
    this.analyticsEnabled,
    this.envId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticsEnabled': ?analyticsEnabled,
      'envId': ?envId,
    };
  }

  factory EnvironmentAddonsConfigState.fromMap(Map<String, dynamic> map) {
    return EnvironmentAddonsConfigState(
      analyticsEnabled: map['analyticsEnabled'] == null ? null : (map['analyticsEnabled'] as bool).input(),
      envId: map['envId'] == null ? null : (map['envId'] as String).input(),
    );
  }
}

