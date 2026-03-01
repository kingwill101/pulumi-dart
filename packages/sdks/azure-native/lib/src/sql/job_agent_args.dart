// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_agent_identity.dart';
import 'sku.dart';

/// {@template pulumi_sql_job_agent_args_doc}
/// The set of arguments for JobAgent.
/// {@endtemplate}
/// {@macro pulumi_sql_job_agent_args_doc}
class JobAgentArgs {
  /// Resource ID of the database to store job metadata in.
  final pulumi.Input<String> databaseId;
  /// The identity of the job agent.
  final pulumi.Input<JobAgentIdentity>? identity;
  /// The name of the job agent to be created or updated.
  final pulumi.Input<String>? jobAgentName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The name and tier of the SKU.
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [JobAgentArgs].
  /// [databaseId] Resource ID of the database to store job metadata in.
  /// [identity] The identity of the job agent.
  /// [jobAgentName] The name of the job agent to be created or updated.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [sku] The name and tier of the SKU.
  /// [tags] Resource tags.
  JobAgentArgs({
    required pulumi.Output<String> databaseId,
    pulumi.Output<JobAgentIdentity>? identity,
    pulumi.Output<String>? jobAgentName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      databaseId = pulumi.Input.asInput<String>(databaseId),
      identity = pulumi.Input.asOptionalInput<JobAgentIdentity>(identity),
      jobAgentName = pulumi.Input.asOptionalInput<String>(jobAgentName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': databaseId,
      'identity': ?pulumi.Input.mapOptionalInputValue<JobAgentIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'jobAgentName': ?jobAgentName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory JobAgentArgs.fromMap(Map<String, dynamic> map) {
    return JobAgentArgs(
      databaseId: pulumi.Output.create<String>(map['databaseId'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<JobAgentIdentity>(JobAgentIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      jobAgentName: map['jobAgentName'] == null ? null : pulumi.Output.create<String>(map['jobAgentName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

