// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_failover_group_read_write_endpoint_failover_policy.dart';

/// {@template pulumi_mssql_managed_instance_failover_group_managed_instance_failover_group_args_doc}
/// The set of arguments for ManagedInstanceFailoverGroup.
/// {@endtemplate}
/// {@macro pulumi_mssql_managed_instance_failover_group_managed_instance_failover_group_args_doc}
class ManagedInstanceFailoverGroupArgs {
  /// The Azure Region where the Managed Instance Failover Group should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The ID of the Azure SQL Managed Instance which will be replicated using a Managed Instance Failover Group. Changing this forces a new resource to be created.
  final pulumi.Input<String> managedInstanceId;
  /// The name which should be used for this Managed Instance Failover Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Azure SQL Managed Instance which will be replicated to. Changing this forces a new resource to be created.
  final pulumi.Input<String> partnerManagedInstanceId;
  /// A `read_write_endpoint_failover_policy` block as defined below.
  final pulumi.Input<ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy> readWriteEndpointFailoverPolicy;
  /// Failover policy for the read-only endpoint. Defaults to `true`.
  final pulumi.Input<bool>? readonlyEndpointFailoverPolicyEnabled;
  /// The type of the secondary Managed Instance. Possible values are `Geo`, `Standby`. Defaults to `Geo`.
  final pulumi.Input<String>? secondaryType;

  /// Creates a new [ManagedInstanceFailoverGroupArgs].
  /// [location] The Azure Region where the Managed Instance Failover Group should exist. Changing this forces a new resource to be created.
  /// [managedInstanceId] The ID of the Azure SQL Managed Instance which will be replicated using a Managed Instance Failover Group. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Managed Instance Failover Group. Changing this forces a new resource to be created.
  /// [partnerManagedInstanceId] The ID of the Azure SQL Managed Instance which will be replicated to. Changing this forces a new resource to be created.
  /// [readWriteEndpointFailoverPolicy] A `read_write_endpoint_failover_policy` block as defined below.
  /// [readonlyEndpointFailoverPolicyEnabled] Failover policy for the read-only endpoint. Defaults to `true`.
  /// [secondaryType] The type of the secondary Managed Instance. Possible values are `Geo`, `Standby`. Defaults to `Geo`.
  ManagedInstanceFailoverGroupArgs({
    this.location,
    required this.managedInstanceId,
    this.name,
    required this.partnerManagedInstanceId,
    required this.readWriteEndpointFailoverPolicy,
    this.readonlyEndpointFailoverPolicyEnabled,
    this.secondaryType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'managedInstanceId': managedInstanceId,
      'name': ?name,
      'partnerManagedInstanceId': partnerManagedInstanceId,
      'readWriteEndpointFailoverPolicy': pulumi.Input.mapInputValue<ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy, Map<String, dynamic>>(readWriteEndpointFailoverPolicy, (value) => value.toMap()),
      'readonlyEndpointFailoverPolicyEnabled': ?readonlyEndpointFailoverPolicyEnabled,
      'secondaryType': ?secondaryType,
    };
  }

  factory ManagedInstanceFailoverGroupArgs.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceFailoverGroupArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedInstanceId: pulumi.Input.fromValue(map['managedInstanceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerManagedInstanceId: pulumi.Input.fromValue(map['partnerManagedInstanceId'] as String),
      readWriteEndpointFailoverPolicy: pulumi.Input.fromValue(ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy.fromMap((map['readWriteEndpointFailoverPolicy']! as Map).cast<String, dynamic>())),
      readonlyEndpointFailoverPolicyEnabled: (() { final guardedValue = map['readonlyEndpointFailoverPolicyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secondaryType: (() { final guardedValue = map['secondaryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

