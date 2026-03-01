// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_failover_group_partner_region.dart';
import 'managed_instance_failover_group_read_write_endpoint_failover_policy.dart';

/// Input properties used for looking up and filtering ManagedInstanceFailoverGroup resources.
class ManagedInstanceFailoverGroupState {
  /// The Azure Region where the Managed Instance Failover Group should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The ID of the Azure SQL Managed Instance which will be replicated using a Managed Instance Failover Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managedInstanceId;
  /// The name which should be used for this Managed Instance Failover Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Azure SQL Managed Instance which will be replicated to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? partnerManagedInstanceId;
  /// A `partner_region` block as defined below.
  final pulumi.Input<List<ManagedInstanceFailoverGroupPartnerRegion>>? partnerRegions;
  /// A `read_write_endpoint_failover_policy` block as defined below.
  final pulumi.Input<ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy>? readWriteEndpointFailoverPolicy;
  /// Failover policy for the read-only endpoint. Defaults to `true`.
  final pulumi.Input<bool>? readonlyEndpointFailoverPolicyEnabled;
  /// The partner replication role of the Managed Instance Failover Group.
  final pulumi.Input<String>? role;
  /// The type of the secondary Managed Instance. Possible values are `Geo`, `Standby`. Defaults to `Geo`.
  final pulumi.Input<String>? secondaryType;

  /// Creates a new [ManagedInstanceFailoverGroupState].
  /// [location] The Azure Region where the Managed Instance Failover Group should exist. Changing this forces a new resource to be created.
  /// [managedInstanceId] The ID of the Azure SQL Managed Instance which will be replicated using a Managed Instance Failover Group. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Managed Instance Failover Group. Changing this forces a new resource to be created.
  /// [partnerManagedInstanceId] The ID of the Azure SQL Managed Instance which will be replicated to. Changing this forces a new resource to be created.
  /// [partnerRegions] A `partner_region` block as defined below.
  /// [readWriteEndpointFailoverPolicy] A `read_write_endpoint_failover_policy` block as defined below.
  /// [readonlyEndpointFailoverPolicyEnabled] Failover policy for the read-only endpoint. Defaults to `true`.
  /// [role] The partner replication role of the Managed Instance Failover Group.
  /// [secondaryType] The type of the secondary Managed Instance. Possible values are `Geo`, `Standby`. Defaults to `Geo`.
  ManagedInstanceFailoverGroupState({
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedInstanceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? partnerManagedInstanceId,
    pulumi.Output<List<ManagedInstanceFailoverGroupPartnerRegion>>? partnerRegions,
    pulumi.Output<ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy>? readWriteEndpointFailoverPolicy,
    pulumi.Output<bool>? readonlyEndpointFailoverPolicyEnabled,
    pulumi.Output<String>? role,
    pulumi.Output<String>? secondaryType,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      managedInstanceId = pulumi.Input.asOptionalInput<String>(managedInstanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      partnerManagedInstanceId = pulumi.Input.asOptionalInput<String>(partnerManagedInstanceId),
      partnerRegions = pulumi.Input.asOptionalInput<List<ManagedInstanceFailoverGroupPartnerRegion>>(partnerRegions),
      readWriteEndpointFailoverPolicy = pulumi.Input.asOptionalInput<ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy>(readWriteEndpointFailoverPolicy),
      readonlyEndpointFailoverPolicyEnabled = pulumi.Input.asOptionalInput<bool>(readonlyEndpointFailoverPolicyEnabled),
      role = pulumi.Input.asOptionalInput<String>(role),
      secondaryType = pulumi.Input.asOptionalInput<String>(secondaryType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'managedInstanceId': ?managedInstanceId,
      'name': ?name,
      'partnerManagedInstanceId': ?partnerManagedInstanceId,
      'partnerRegions': ?pulumi.Input.mapOptionalInputValue<List<ManagedInstanceFailoverGroupPartnerRegion>, List<Map<String, dynamic>>>(partnerRegions, (value) => pulumi.Input.encodeList<ManagedInstanceFailoverGroupPartnerRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readWriteEndpointFailoverPolicy': ?pulumi.Input.mapOptionalInputValue<ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy, Map<String, dynamic>>(readWriteEndpointFailoverPolicy, (value) => value.toMap()),
      'readonlyEndpointFailoverPolicyEnabled': ?readonlyEndpointFailoverPolicyEnabled,
      'role': ?role,
      'secondaryType': ?secondaryType,
    };
  }

  factory ManagedInstanceFailoverGroupState.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceFailoverGroupState(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedInstanceId: map['managedInstanceId'] == null ? null : pulumi.Output.create<String>(map['managedInstanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      partnerManagedInstanceId: map['partnerManagedInstanceId'] == null ? null : pulumi.Output.create<String>(map['partnerManagedInstanceId'] as String),
      partnerRegions: map['partnerRegions'] == null ? null : pulumi.Output.create<List<ManagedInstanceFailoverGroupPartnerRegion>>(pulumi.Input.decodeList<ManagedInstanceFailoverGroupPartnerRegion>(map['partnerRegions'], (value) => ManagedInstanceFailoverGroupPartnerRegion.fromMap((value as Map).cast<String, dynamic>()))),
      readWriteEndpointFailoverPolicy: map['readWriteEndpointFailoverPolicy'] == null ? null : pulumi.Output.create<ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy>(ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy.fromMap((map['readWriteEndpointFailoverPolicy'] as Map).cast<String, dynamic>())),
      readonlyEndpointFailoverPolicyEnabled: map['readonlyEndpointFailoverPolicyEnabled'] == null ? null : pulumi.Output.create<bool>(map['readonlyEndpointFailoverPolicyEnabled'] as bool),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      secondaryType: map['secondaryType'] == null ? null : pulumi.Output.create<String>(map['secondaryType'] as String),
    );
  }
}

