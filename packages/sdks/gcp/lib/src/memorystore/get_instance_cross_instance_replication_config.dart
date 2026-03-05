// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_cross_instance_replication_config_membership.dart';
import 'get_instance_cross_instance_replication_config_primary_instance.dart';
import 'get_instance_cross_instance_replication_config_secondary_instance.dart';

class GetInstanceCrossInstanceReplicationConfig {
  /// The instance role supports the following values:
  /// 1. 'INSTANCE_ROLE_UNSPECIFIED': This is an independent instance that has never participated in cross instance replication. It allows both reads and writes.
  /// 2. 'NONE': This is an independent instance that previously participated in cross instance replication(either as a 'PRIMARY' or 'SECONDARY' cluster). It allows both reads and writes.
  /// 3. 'PRIMARY': This instance serves as the replication source for secondary instance that are replicating from it. Any data written to it is automatically replicated to its secondary clusters. It allows both reads and writes.
  /// 4. 'SECONDARY': This instance replicates data from the primary instance. It allows only reads. Possible values: ["INSTANCE_ROLE_UNSPECIFIED", "NONE", "PRIMARY", "SECONDARY"]
  final pulumi.Input<String> instanceRole;
  /// An output only view of all the member instance participating in cross instance replication. This field is populated for all the member clusters irrespective of their cluster role.
  final pulumi.Input<List<GetInstanceCrossInstanceReplicationConfigMembership>> memberships;
  /// This field is only set for a secondary instance. Details of the primary instance that is used as the replication source for this secondary instance. This is allowed to be set only for clusters whose cluster role is of type 'SECONDARY'.
  final pulumi.Input<List<GetInstanceCrossInstanceReplicationConfigPrimaryInstance>> primaryInstances;
  /// List of secondary instances that are replicating from this primary cluster. This is allowed to be set only for instances whose cluster role is of type 'PRIMARY'.
  final pulumi.Input<List<GetInstanceCrossInstanceReplicationConfigSecondaryInstance>> secondaryInstances;
  /// The last time cross instance replication config was updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetInstanceCrossInstanceReplicationConfig].
  /// [instanceRole] The instance role supports the following values:
  /// [memberships] An output only view of all the member instance participating in cross instance replication. This field is populated for all the member clusters irrespective of their cluster role.
  /// [primaryInstances] This field is only set for a secondary instance. Details of the primary instance that is used as the replication source for this secondary instance. This is allowed to be set only for clusters whose cluster role is of type 'SECONDARY'.
  /// [secondaryInstances] List of secondary instances that are replicating from this primary cluster. This is allowed to be set only for instances whose cluster role is of type 'PRIMARY'.
  /// [updateTime] The last time cross instance replication config was updated.
  GetInstanceCrossInstanceReplicationConfig({
    required this.instanceRole,
    required this.memberships,
    required this.primaryInstances,
    required this.secondaryInstances,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceRole': instanceRole,
      'memberships': pulumi.Input.mapInputValue<List<GetInstanceCrossInstanceReplicationConfigMembership>, List<Map<String, dynamic>>>(memberships, (value) => pulumi.Input.encodeList<GetInstanceCrossInstanceReplicationConfigMembership, Map<String, dynamic>>(value, (value) => value.toMap())),
      'primaryInstances': pulumi.Input.mapInputValue<List<GetInstanceCrossInstanceReplicationConfigPrimaryInstance>, List<Map<String, dynamic>>>(primaryInstances, (value) => pulumi.Input.encodeList<GetInstanceCrossInstanceReplicationConfigPrimaryInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secondaryInstances': pulumi.Input.mapInputValue<List<GetInstanceCrossInstanceReplicationConfigSecondaryInstance>, List<Map<String, dynamic>>>(secondaryInstances, (value) => pulumi.Input.encodeList<GetInstanceCrossInstanceReplicationConfigSecondaryInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': updateTime,
    };
  }

  factory GetInstanceCrossInstanceReplicationConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceCrossInstanceReplicationConfig(
      instanceRole: pulumi.Input.fromValue(map['instanceRole'] as String),
      memberships: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceCrossInstanceReplicationConfigMembership>(map['memberships']!, (value) => GetInstanceCrossInstanceReplicationConfigMembership.fromMap((value as Map).cast<String, dynamic>()))),
      primaryInstances: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceCrossInstanceReplicationConfigPrimaryInstance>(map['primaryInstances']!, (value) => GetInstanceCrossInstanceReplicationConfigPrimaryInstance.fromMap((value as Map).cast<String, dynamic>()))),
      secondaryInstances: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceCrossInstanceReplicationConfigSecondaryInstance>(map['secondaryInstances']!, (value) => GetInstanceCrossInstanceReplicationConfigSecondaryInstance.fromMap((value as Map).cast<String, dynamic>()))),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}

