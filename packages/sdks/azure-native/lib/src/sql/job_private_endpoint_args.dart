// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_job_private_endpoint_args_doc}
/// The set of arguments for JobPrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_sql_job_private_endpoint_args_doc}
class JobPrivateEndpointArgs {
  /// The name of the job agent.
  final pulumi.Input<String> jobAgentName;
  /// The name of the private endpoint.
  final pulumi.Input<String>? privateEndpointName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// ARM resource id of the server the private endpoint will target.
  final pulumi.Input<String> targetServerAzureResourceId;

  /// Creates a new [JobPrivateEndpointArgs].
  /// [jobAgentName] The name of the job agent.
  /// [privateEndpointName] The name of the private endpoint.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [targetServerAzureResourceId] ARM resource id of the server the private endpoint will target.
  JobPrivateEndpointArgs({
    required pulumi.Output<String> jobAgentName,
    pulumi.Output<String>? privateEndpointName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    required pulumi.Output<String> targetServerAzureResourceId,
  }) :
      jobAgentName = pulumi.Input.asInput<String>(jobAgentName),
      privateEndpointName = pulumi.Input.asOptionalInput<String>(privateEndpointName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      targetServerAzureResourceId = pulumi.Input.asInput<String>(targetServerAzureResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobAgentName': jobAgentName,
      'privateEndpointName': ?privateEndpointName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'targetServerAzureResourceId': targetServerAzureResourceId,
    };
  }

  factory JobPrivateEndpointArgs.fromMap(Map<String, dynamic> map) {
    return JobPrivateEndpointArgs(
      jobAgentName: pulumi.Output.create<String>(map['jobAgentName'] as String),
      privateEndpointName: map['privateEndpointName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      targetServerAzureResourceId: pulumi.Output.create<String>(map['targetServerAzureResourceId'] as String),
    );
  }
}

