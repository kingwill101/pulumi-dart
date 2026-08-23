// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_esc_open_environment_request_args_doc}
/// The set of arguments for OpenEnvironmentRequest.
/// {@endtemplate}
/// {@macro pulumi_api_esc_open_environment_request_args_doc}
class OpenEnvironmentRequestArgs {
  /// Total duration that the resulting grant can be used to access the environment open endpoint (after first open)
  final pulumi.Input<int> accessDurationSeconds;
  /// The change request ID
  final pulumi.Input<String>? changeRequestId;
  /// The environment name
  final pulumi.Input<String> envName;
  /// Time from application of the request until the resulting grant expires
  final pulumi.Input<int> grantExpirationSeconds;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The project name
  final pulumi.Input<String> projectName;

  /// Creates a new [OpenEnvironmentRequestArgs].
  /// [accessDurationSeconds] Total duration that the resulting grant can be used to access the environment open endpoint (after first open)
  /// [changeRequestId] The change request ID
  /// [envName] The environment name
  /// [grantExpirationSeconds] Time from application of the request until the resulting grant expires
  /// [orgName] The organization name
  /// [projectName] The project name
  const OpenEnvironmentRequestArgs({
    required this.accessDurationSeconds,
    this.changeRequestId,
    required this.envName,
    required this.grantExpirationSeconds,
    required this.orgName,
    required this.projectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessDurationSeconds': accessDurationSeconds,
      'changeRequestId': ?changeRequestId,
      'envName': envName,
      'grantExpirationSeconds': grantExpirationSeconds,
      'orgName': orgName,
      'projectName': projectName,
    };
  }

  factory OpenEnvironmentRequestArgs.fromMap(Map<String, dynamic> map) {
    return OpenEnvironmentRequestArgs(
      accessDurationSeconds: pulumi.Input.fromValue(map['accessDurationSeconds'] as int),
      changeRequestId: (() { final guardedValue = map['changeRequestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envName: pulumi.Input.fromValue(map['envName'] as String),
      grantExpirationSeconds: pulumi.Input.fromValue(map['grantExpirationSeconds'] as int),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
    );
  }
}
