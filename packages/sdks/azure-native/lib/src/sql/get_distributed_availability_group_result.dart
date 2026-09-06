// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distributed_availability_group_database_response.dart';

/// Result data returned by getDistributedAvailabilityGroup.
class GetDistributedAvailabilityGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Databases in the distributed availability group
  final List<DistributedAvailabilityGroupDatabaseResponse>? databases;
  /// ID of the distributed availability group
  final String? distributedAvailabilityGroupId;
  /// Name of the distributed availability group
  final String? distributedAvailabilityGroupName;
  /// The link failover mode - can be Manual if intended to be used for two-way failover with a supported SQL Server, or None for one-way failover to Azure.
  final String? failoverMode;
  /// Resource ID.
  final String? id;
  /// Managed instance side availability group name
  final String? instanceAvailabilityGroupName;
  /// Managed instance side link role
  final String? instanceLinkRole;
  /// Resource name.
  final String? name;
  /// SQL server side availability group name
  final String? partnerAvailabilityGroupName;
  /// SQL server side endpoint - IP or DNS resolvable name
  final String? partnerEndpoint;
  /// SQL server side link role
  final String? partnerLinkRole;
  /// Replication mode of the link
  final String? replicationMode;
  /// Database seeding mode – can be Automatic (default), or Manual for supported scenarios.
  final String? seedingMode;
  /// Resource type.
  final String? type;

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
  const GetDistributedAvailabilityGroupResult({
    this.azureApiVersion,
    this.databases,
    this.distributedAvailabilityGroupId,
    this.distributedAvailabilityGroupName,
    this.failoverMode,
    this.id,
    this.instanceAvailabilityGroupName,
    this.instanceLinkRole,
    this.name,
    this.partnerAvailabilityGroupName,
    this.partnerEndpoint,
    this.partnerLinkRole,
    this.replicationMode,
    this.seedingMode,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'databases': ?(() { final guardedValue = databases; if (guardedValue == null) return null; return pulumi.Input.encodeList<DistributedAvailabilityGroupDatabaseResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'distributedAvailabilityGroupId': ?distributedAvailabilityGroupId,
      'distributedAvailabilityGroupName': ?distributedAvailabilityGroupName,
      'failoverMode': ?failoverMode,
      'id': ?id,
      'instanceAvailabilityGroupName': ?instanceAvailabilityGroupName,
      'instanceLinkRole': ?instanceLinkRole,
      'name': ?name,
      'partnerAvailabilityGroupName': ?partnerAvailabilityGroupName,
      'partnerEndpoint': ?partnerEndpoint,
      'partnerLinkRole': ?partnerLinkRole,
      'replicationMode': ?replicationMode,
      'seedingMode': ?seedingMode,
      'type': ?type,
    };
  }

  factory GetDistributedAvailabilityGroupResult.fromMap(Map<String, dynamic> map) {
    return GetDistributedAvailabilityGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databases: (() { final guardedValue = map['databases']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributedAvailabilityGroupDatabaseResponse>(guardedValue, (value) => DistributedAvailabilityGroupDatabaseResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      distributedAvailabilityGroupId: (() { final guardedValue = map['distributedAvailabilityGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      distributedAvailabilityGroupName: (() { final guardedValue = map['distributedAvailabilityGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      failoverMode: (() { final guardedValue = map['failoverMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceAvailabilityGroupName: (() { final guardedValue = map['instanceAvailabilityGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceLinkRole: (() { final guardedValue = map['instanceLinkRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerAvailabilityGroupName: (() { final guardedValue = map['partnerAvailabilityGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerEndpoint: (() { final guardedValue = map['partnerEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerLinkRole: (() { final guardedValue = map['partnerLinkRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicationMode: (() { final guardedValue = map['replicationMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      seedingMode: (() { final guardedValue = map['seedingMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
