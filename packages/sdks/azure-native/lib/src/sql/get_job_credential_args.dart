// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_job_credential_args_doc}
/// Arguments for getJobCredential.
/// {@endtemplate}
/// {@macro pulumi_sql_get_job_credential_args_doc}
class GetJobCredentialArgs {
  /// The name of the credential.
  final pulumi.Input<String> credentialName;
  /// The name of the job agent.
  final pulumi.Input<String> jobAgentName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetJobCredentialArgs].
  /// [credentialName] The name of the credential.
  /// [jobAgentName] The name of the job agent.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  GetJobCredentialArgs({
    required pulumi.Output<String> credentialName,
    required pulumi.Output<String> jobAgentName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
  }) :
      credentialName = pulumi.Input.asInput<String>(credentialName),
      jobAgentName = pulumi.Input.asInput<String>(jobAgentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialName': credentialName,
      'jobAgentName': jobAgentName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetJobCredentialArgs.fromMap(Map<String, dynamic> map) {
    return GetJobCredentialArgs(
      credentialName: pulumi.Output.create<String>(map['credentialName'] as String),
      jobAgentName: pulumi.Output.create<String>(map['jobAgentName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

