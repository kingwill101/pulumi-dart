// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distributed_availability_group_database_response.dart';

/// Result data returned by getDistributedAvailabilityGroup.
class GetDistributedAvailabilityGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Databases in the distributed availability group
  final List<DistributedAvailabilityGroupDatabaseResponse>? databases;
  /// ID of the distributed availability group
  final String distributedAvailabilityGroupId;
  /// Name of the distributed availability group
  final String distributedAvailabilityGroupName;
  /// The link failover mode - can be Manual if intended to be used for two-way failover with a supported SQL Server, or None for one-way failover to Azure.
  final String? failoverMode;
  /// Resource ID.
  final String id;
  /// Managed instance side availability group name
  final String? instanceAvailabilityGroupName;
  /// Managed instance side link role
  final String? instanceLinkRole;
  /// Resource name.
  final String name;
  /// SQL server side availability group name
  final String? partnerAvailabilityGroupName;
  /// SQL server side endpoint - IP or DNS resolvable name
  final String? partnerEndpoint;
  /// SQL server side link role
  final String partnerLinkRole;
  /// Replication mode of the link
  final String? replicationMode;
  /// Database seeding mode – can be Automatic (default), or Manual for supported scenarios.
  final String? seedingMode;
  /// Resource type.
  final String type;

  /// Creates a new [GetDistributedAvailabilityGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [databases] Databases in the distributed availability group
  /// [distributedAvailabilityGroupId] ID of the distributed availability group
  /// [distributedAvailabilityGroupName] Name of the distributed availability group
  /// [failoverMode] The link failover mode - can be Manual if intended to be used for two-way failover with a supported SQL Server, or None for one-way failover to Azure.
  /// [id] Resource ID.
  /// [instanceAvailabilityGroupName] Managed instance side availability group name
  /// [instanceLinkRole] Managed instance side link role
  /// [name] Resource name.
  /// [partnerAvailabilityGroupName] SQL server side availability group name
  /// [partnerEndpoint] SQL server side endpoint - IP or DNS resolvable name
  /// [partnerLinkRole] SQL server side link role
  /// [replicationMode] Replication mode of the link
  /// [seedingMode] Database seeding mode – can be Automatic (default), or Manual for supported scenarios.
  /// [type] Resource type.
  GetDistributedAvailabilityGroupResult({
    required this.azureApiVersion,
    this.databases,
    required this.distributedAvailabilityGroupId,
    required this.distributedAvailabilityGroupName,
    this.failoverMode,
    required this.id,
    this.instanceAvailabilityGroupName,
    this.instanceLinkRole,
    required this.name,
    this.partnerAvailabilityGroupName,
    this.partnerEndpoint,
    required this.partnerLinkRole,
    this.replicationMode,
    this.seedingMode,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'databases': ?databases == null ? null : pulumi.Input.encodeList<DistributedAvailabilityGroupDatabaseResponse, Map<String, dynamic>>(databases!, (value) => value.toMap()),
      'distributedAvailabilityGroupId': distributedAvailabilityGroupId,
      'distributedAvailabilityGroupName': distributedAvailabilityGroupName,
      'failoverMode': ?failoverMode,
      'id': id,
      'instanceAvailabilityGroupName': ?instanceAvailabilityGroupName,
      'instanceLinkRole': ?instanceLinkRole,
      'name': name,
      'partnerAvailabilityGroupName': ?partnerAvailabilityGroupName,
      'partnerEndpoint': ?partnerEndpoint,
      'partnerLinkRole': partnerLinkRole,
      'replicationMode': ?replicationMode,
      'seedingMode': ?seedingMode,
      'type': type,
    };
  }

  factory GetDistributedAvailabilityGroupResult.fromMap(Map<String, dynamic> map) {
    return GetDistributedAvailabilityGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      databases: map['databases'] == null ? null : pulumi.Input.decodeList<DistributedAvailabilityGroupDatabaseResponse>(map['databases'], (value) => DistributedAvailabilityGroupDatabaseResponse.fromMap((value as Map).cast<String, dynamic>())),
      distributedAvailabilityGroupId: map['distributedAvailabilityGroupId'] as String,
      distributedAvailabilityGroupName: map['distributedAvailabilityGroupName'] as String,
      failoverMode: map['failoverMode'] == null ? null : map['failoverMode'] as String,
      id: map['id'] as String,
      instanceAvailabilityGroupName: map['instanceAvailabilityGroupName'] == null ? null : map['instanceAvailabilityGroupName'] as String,
      instanceLinkRole: map['instanceLinkRole'] == null ? null : map['instanceLinkRole'] as String,
      name: map['name'] as String,
      partnerAvailabilityGroupName: map['partnerAvailabilityGroupName'] == null ? null : map['partnerAvailabilityGroupName'] as String,
      partnerEndpoint: map['partnerEndpoint'] == null ? null : map['partnerEndpoint'] as String,
      partnerLinkRole: map['partnerLinkRole'] as String,
      replicationMode: map['replicationMode'] == null ? null : map['replicationMode'] as String,
      seedingMode: map['seedingMode'] == null ? null : map['seedingMode'] as String,
      type: map['type'] as String,
    );
  }
}

