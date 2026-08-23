// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_esc_environment_settings_args_doc}
/// The set of arguments for EnvironmentSettings.
/// {@endtemplate}
/// {@macro pulumi_api_esc_environment_settings_args_doc}
class EnvironmentSettingsArgs {
  /// DeletionProtected indicates whether deletion protection should be enabled for this environment. Null means no change.
  final pulumi.Input<bool>? deletionProtected;
  /// The environment name
  final pulumi.Input<String> envName;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The project name
  final pulumi.Input<String> projectName;

  /// Creates a new [EnvironmentSettingsArgs].
  /// [deletionProtected] DeletionProtected indicates whether deletion protection should be enabled for this environment. Null means no change.
  /// [envName] The environment name
  /// [orgName] The organization name
  /// [projectName] The project name
  const EnvironmentSettingsArgs({
    this.deletionProtected,
    required this.envName,
    required this.orgName,
    required this.projectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtected': ?deletionProtected,
      'envName': envName,
      'orgName': orgName,
      'projectName': projectName,
    };
  }

  factory EnvironmentSettingsArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentSettingsArgs(
      deletionProtected: (() { final guardedValue = map['deletionProtected']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      envName: pulumi.Input.fromValue(map['envName'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
    );
  }
}
