// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_failover_group_partner_region.dart';
import 'managed_instance_failover_group_read_write_endpoint_failover_policy.dart';

/// Input properties used for looking up and filtering ManagedInstanceFailoverGroup resources.
class ManagedInstanceFailoverGroupState {
  /// The Azure Region where the Managed Instance Failover Group should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The ID of the Azure SQL Managed Instance which will be replicated using a Managed Instance Failover Group. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? managedInstanceId;
  /// The name which should be used for this Managed Instance Failover Group. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the Azure SQL Managed Instance which will be replicated to. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? partnerManagedInstanceId;
  /// A `partnerRegion` block as defined below.
  final pulumi.Input<List<ManagedInstanceFailoverGroupPartnerRegion>?>? partnerRegions;
  /// A `readWriteEndpointFailoverPolicy` block as defined below.
  final pulumi.Input<ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy?>? readWriteEndpointFailoverPolicy;
  /// Failover policy for the read-only endpoint. Defaults to `true`.
  final pulumi.Input<bool?>? readonlyEndpointFailoverPolicyEnabled;
  /// The partner replication role of the Managed Instance Failover Group.
  final pulumi.Input<String?>? role;
  /// The type of the secondary Managed Instance. Possible values are `Geo`, `Standby`. Defaults to `Geo`.
  final pulumi.Input<String?>? secondaryType;

  /// Creates a new [ManagedInstanceFailoverGroupState].
  /// [location] The Azure Region where the Managed Instance Failover Group should exist. Changing this forces a new resource to be created.
  /// [managedInstanceId] The ID of the Azure SQL Managed Instance which will be replicated using a Managed Instance Failover Group. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Managed Instance Failover Group. Changing this forces a new resource to be created.
  /// [partnerManagedInstanceId] The ID of the Azure SQL Managed Instance which will be replicated to. Changing this forces a new resource to be created.
  /// [partnerRegions] A `partnerRegion` block as defined below.
  /// [readWriteEndpointFailoverPolicy] A `readWriteEndpointFailoverPolicy` block as defined below.
  /// [readonlyEndpointFailoverPolicyEnabled] Failover policy for the read-only endpoint. Defaults to `true`.
  /// [role] The partner replication role of the Managed Instance Failover Group.
  /// [secondaryType] The type of the secondary Managed Instance. Possible values are `Geo`, `Standby`. Defaults to `Geo`.
  const ManagedInstanceFailoverGroupState({
    this.location,
    this.managedInstanceId,
    this.name,
    this.partnerManagedInstanceId,
    this.partnerRegions,
    this.readWriteEndpointFailoverPolicy,
    this.readonlyEndpointFailoverPolicyEnabled,
    this.role,
    this.secondaryType,
  });

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
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedInstanceId: (() { final guardedValue = map['managedInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerManagedInstanceId: (() { final guardedValue = map['partnerManagedInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerRegions: (() { final guardedValue = map['partnerRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedInstanceFailoverGroupPartnerRegion>(guardedValue, (value) => ManagedInstanceFailoverGroupPartnerRegion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      readWriteEndpointFailoverPolicy: (() { final guardedValue = map['readWriteEndpointFailoverPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      readonlyEndpointFailoverPolicyEnabled: (() { final guardedValue = map['readonlyEndpointFailoverPolicyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryType: (() { final guardedValue = map['secondaryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
