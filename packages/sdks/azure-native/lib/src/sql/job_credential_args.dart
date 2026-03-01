// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_job_credential_args_doc}
/// The set of arguments for JobCredential.
/// {@endtemplate}
/// {@macro pulumi_sql_job_credential_args_doc}
class JobCredentialArgs {
  /// The name of the credential.
  final pulumi.Input<String>? credentialName;
  /// The name of the job agent.
  final pulumi.Input<String> jobAgentName;
  /// The credential password.
  final pulumi.Input<String> password;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The credential user name.
  final pulumi.Input<String> username;

  /// Creates a new [JobCredentialArgs].
  /// [credentialName] The name of the credential.
  /// [jobAgentName] The name of the job agent.
  /// [password] The credential password.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [username] The credential user name.
  JobCredentialArgs({
    pulumi.Output<String>? credentialName,
    required pulumi.Output<String> jobAgentName,
    required pulumi.Output<String> password,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    required pulumi.Output<String> username,
  }) :
      credentialName = pulumi.Input.asOptionalInput<String>(credentialName),
      jobAgentName = pulumi.Input.asInput<String>(jobAgentName),
      password = pulumi.Input.asInput<String>(password),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      username = pulumi.Input.asInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialName': ?credentialName,
      'jobAgentName': jobAgentName,
      'password': password,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'username': username,
    };
  }

  factory JobCredentialArgs.fromMap(Map<String, dynamic> map) {
    return JobCredentialArgs(
      credentialName: map['credentialName'] == null ? null : pulumi.Output.create<String>(map['credentialName'] as String),
      jobAgentName: pulumi.Output.create<String>(map['jobAgentName'] as String),
      password: pulumi.Output.create<String>(map['password'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      username: pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

