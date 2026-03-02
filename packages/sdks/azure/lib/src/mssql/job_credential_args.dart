// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_job_credential_job_credential_args_doc}
/// The set of arguments for JobCredential.
/// {@endtemplate}
/// {@macro pulumi_mssql_job_credential_job_credential_args_doc}
class JobCredentialArgs {
  /// The ID of the Elastic Job Agent. Changing this forces a new Elastic Job Credential to be created.
  final pulumi.Input<String> jobAgentId;
  /// The name which should be used for this Elastic Job Credential. Changing this forces a new Elastic Job Credential to be created.
  final pulumi.Input<String>? name;
  /// The password to use for this Elastic Job credential.
  final pulumi.Input<String>? password;
  /// An integer value used to trigger an update for `password_wo`. This property should be incremented when updating `password_wo`.
  final pulumi.Input<int>? passwordWoVersion;
  /// The username to use for this Elastic Job credential.
  final pulumi.Input<String> username;

  /// Creates a new [JobCredentialArgs].
  /// [jobAgentId] The ID of the Elastic Job Agent. Changing this forces a new Elastic Job Credential to be created.
  /// [name] The name which should be used for this Elastic Job Credential. Changing this forces a new Elastic Job Credential to be created.
  /// [password] The password to use for this Elastic Job credential.
  /// [passwordWoVersion] An integer value used to trigger an update for `password_wo`. This property should be incremented when updating `password_wo`.
  /// [username] The username to use for this Elastic Job credential.
  JobCredentialArgs({
    required this.jobAgentId,
    this.name,
    this.password,
    this.passwordWoVersion,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobAgentId': jobAgentId,
      'name': ?name,
      'password': ?password,
      'passwordWoVersion': ?passwordWoVersion,
      'username': username,
    };
  }

  factory JobCredentialArgs.fromMap(Map<String, dynamic> map) {
    return JobCredentialArgs(
      jobAgentId: (map['jobAgentId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      passwordWoVersion: map['passwordWoVersion'] == null ? null : (map['passwordWoVersion'] as int).input(),
      username: (map['username'] as String).input(),
    );
  }
}

