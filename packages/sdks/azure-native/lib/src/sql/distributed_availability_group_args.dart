// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distributed_availability_group_database.dart';

/// {@template pulumi_sql_distributed_availability_group_args_doc}
/// The set of arguments for DistributedAvailabilityGroup.
/// {@endtemplate}
/// {@macro pulumi_sql_distributed_availability_group_args_doc}
class DistributedAvailabilityGroupArgs {
  /// Databases in the distributed availability group
  final pulumi.Input<List<DistributedAvailabilityGroupDatabase>>? databases;
  /// The distributed availability group name.
  final pulumi.Input<String>? distributedAvailabilityGroupName;
  /// The link failover mode - can be Manual if intended to be used for two-way failover with a supported SQL Server, or None for one-way failover to Azure.
  final pulumi.Input<String>? failoverMode;
  /// Managed instance side availability group name
  final pulumi.Input<String>? instanceAvailabilityGroupName;
  /// Managed instance side link role
  final pulumi.Input<String>? instanceLinkRole;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// SQL server side availability group name
  final pulumi.Input<String>? partnerAvailabilityGroupName;
  /// SQL server side endpoint - IP or DNS resolvable name
  final pulumi.Input<String>? partnerEndpoint;
  /// Replication mode of the link
  final pulumi.Input<String>? replicationMode;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Database seeding mode – can be Automatic (default), or Manual for supported scenarios.
  final pulumi.Input<String>? seedingMode;

  /// Creates a new [DistributedAvailabilityGroupArgs].
  /// [databases] Databases in the distributed availability group
  /// [distributedAvailabilityGroupName] The distributed availability group name.
  /// [failoverMode] The link failover mode - can be Manual if intended to be used for two-way failover with a supported SQL Server, or None for one-way failover to Azure.
  /// [instanceAvailabilityGroupName] Managed instance side availability group name
  /// [instanceLinkRole] Managed instance side link role
  /// [managedInstanceName] The name of the managed instance.
  /// [partnerAvailabilityGroupName] SQL server side availability group name
  /// [partnerEndpoint] SQL server side endpoint - IP or DNS resolvable name
  /// [replicationMode] Replication mode of the link
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [seedingMode] Database seeding mode – can be Automatic (default), or Manual for supported scenarios.
  DistributedAvailabilityGroupArgs({
    this.databases,
    this.distributedAvailabilityGroupName,
    this.failoverMode,
    this.instanceAvailabilityGroupName,
    this.instanceLinkRole,
    required this.managedInstanceName,
    this.partnerAvailabilityGroupName,
    this.partnerEndpoint,
    this.replicationMode,
    required this.resourceGroupName,
    this.seedingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': ?pulumi.Input.mapOptionalInputValue<List<DistributedAvailabilityGroupDatabase>, List<Map<String, dynamic>>>(databases, (value) => pulumi.Input.encodeList<DistributedAvailabilityGroupDatabase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'distributedAvailabilityGroupName': ?distributedAvailabilityGroupName,
      'failoverMode': ?failoverMode,
      'instanceAvailabilityGroupName': ?instanceAvailabilityGroupName,
      'instanceLinkRole': ?instanceLinkRole,
      'managedInstanceName': managedInstanceName,
      'partnerAvailabilityGroupName': ?partnerAvailabilityGroupName,
      'partnerEndpoint': ?partnerEndpoint,
      'replicationMode': ?replicationMode,
      'resourceGroupName': resourceGroupName,
      'seedingMode': ?seedingMode,
    };
  }

  factory DistributedAvailabilityGroupArgs.fromMap(Map<String, dynamic> map) {
    return DistributedAvailabilityGroupArgs(
      databases: (() { final guardedValue = map['databases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DistributedAvailabilityGroupDatabase>(guardedValue, (value) => DistributedAvailabilityGroupDatabase.fromMap((value as Map).cast<String, dynamic>()))); })(),
      distributedAvailabilityGroupName: (() { final guardedValue = map['distributedAvailabilityGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failoverMode: (() { final guardedValue = map['failoverMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceAvailabilityGroupName: (() { final guardedValue = map['instanceAvailabilityGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceLinkRole: (() { final guardedValue = map['instanceLinkRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedInstanceName: pulumi.Input.fromValue(map['managedInstanceName'] as String),
      partnerAvailabilityGroupName: (() { final guardedValue = map['partnerAvailabilityGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerEndpoint: (() { final guardedValue = map['partnerEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationMode: (() { final guardedValue = map['replicationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      seedingMode: (() { final guardedValue = map['seedingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

