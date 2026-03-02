// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_environment_addons_config_environment_addons_config_args_doc}
/// The set of arguments for EnvironmentAddonsConfig.
/// {@endtemplate}
/// {@macro pulumi_apigee_environment_addons_config_environment_addons_config_args_doc}
class EnvironmentAddonsConfigArgs {
  /// Flag to enable/disable Analytics.
  final pulumi.Input<bool>? analyticsEnabled;
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final pulumi.Input<String> envId;

  /// Creates a new [EnvironmentAddonsConfigArgs].
  /// [analyticsEnabled] Flag to enable/disable Analytics.
  /// [envId] The Apigee environment group associated with the Apigee environment,
  EnvironmentAddonsConfigArgs({
    this.analyticsEnabled,
    required this.envId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticsEnabled': ?analyticsEnabled,
      'envId': envId,
    };
  }

  factory EnvironmentAddonsConfigArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentAddonsConfigArgs(
      analyticsEnabled: map['analyticsEnabled'] == null ? null : (map['analyticsEnabled']! as bool).input(),
      envId: (map['envId'] as String).input(),
    );
  }
}

