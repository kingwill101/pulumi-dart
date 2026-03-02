// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_cross_instance_replication_config_membership_primary_instance.dart';
import 'instance_cross_instance_replication_config_membership_secondary_instance.dart';

class InstanceCrossInstanceReplicationConfigMembership {
  /// Details of the primary instance that is used as the replication source for all the secondary instances.
  final pulumi.Input<List<InstanceCrossInstanceReplicationConfigMembershipPrimaryInstance>>? primaryInstances;
  /// List of secondary instances that are replicating from the primary instance.
  final pulumi.Input<List<InstanceCrossInstanceReplicationConfigMembershipSecondaryInstance>>? secondaryInstances;

  /// Creates a new [InstanceCrossInstanceReplicationConfigMembership].
  /// [primaryInstances] Details of the primary instance that is used as the replication source for all the secondary instances.
  /// [secondaryInstances] List of secondary instances that are replicating from the primary instance.
  InstanceCrossInstanceReplicationConfigMembership({
    this.primaryInstances,
    this.secondaryInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryInstances': ?pulumi.Input.mapOptionalInputValue<List<InstanceCrossInstanceReplicationConfigMembershipPrimaryInstance>, List<Map<String, dynamic>>>(primaryInstances, (value) => pulumi.Input.encodeList<InstanceCrossInstanceReplicationConfigMembershipPrimaryInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secondaryInstances': ?pulumi.Input.mapOptionalInputValue<List<InstanceCrossInstanceReplicationConfigMembershipSecondaryInstance>, List<Map<String, dynamic>>>(secondaryInstances, (value) => pulumi.Input.encodeList<InstanceCrossInstanceReplicationConfigMembershipSecondaryInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceCrossInstanceReplicationConfigMembership.fromMap(Map<String, dynamic> map) {
    return InstanceCrossInstanceReplicationConfigMembership(
      primaryInstances: map['primaryInstances'] == null ? null : (pulumi.Input.decodeList<InstanceCrossInstanceReplicationConfigMembershipPrimaryInstance>(map['primaryInstances'], (value) => InstanceCrossInstanceReplicationConfigMembershipPrimaryInstance.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secondaryInstances: map['secondaryInstances'] == null ? null : (pulumi.Input.decodeList<InstanceCrossInstanceReplicationConfigMembershipSecondaryInstance>(map['secondaryInstances'], (value) => InstanceCrossInstanceReplicationConfigMembershipSecondaryInstance.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

