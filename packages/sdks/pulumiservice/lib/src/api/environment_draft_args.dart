// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_esc_environment_draft_args_doc}
/// The set of arguments for EnvironmentDraft.
/// {@endtemplate}
/// {@macro pulumi_api_esc_environment_draft_args_doc}
class EnvironmentDraftArgs {
  /// The change request ID
  final pulumi.Input<String>? changeRequestId;
  /// The environment name
  final pulumi.Input<String> envName;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The project name
  final pulumi.Input<String> projectName;

  /// Creates a new [EnvironmentDraftArgs].
  /// [changeRequestId] The change request ID
  /// [envName] The environment name
  /// [orgName] The organization name
  /// [projectName] The project name
  const EnvironmentDraftArgs({
    this.changeRequestId,
    required this.envName,
    required this.orgName,
    required this.projectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeRequestId': ?changeRequestId,
      'envName': envName,
      'orgName': orgName,
      'projectName': projectName,
    };
  }

  factory EnvironmentDraftArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentDraftArgs(
      changeRequestId: (() { final guardedValue = map['changeRequestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envName: pulumi.Input.fromValue(map['envName'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
    );
  }
}
