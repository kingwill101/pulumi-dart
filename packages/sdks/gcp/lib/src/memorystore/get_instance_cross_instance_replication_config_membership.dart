// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_cross_instance_replication_config_membership_primary_instance.dart';
import 'get_instance_cross_instance_replication_config_membership_secondary_instance.dart';

class GetInstanceCrossInstanceReplicationConfigMembership {
  /// Details of the primary instance that is used as the replication source for all the secondary instances.
  final pulumi.Input<List<GetInstanceCrossInstanceReplicationConfigMembershipPrimaryInstance>> primaryInstances;
  /// List of secondary instances that are replicating from the primary instance.
  final pulumi.Input<List<GetInstanceCrossInstanceReplicationConfigMembershipSecondaryInstance>> secondaryInstances;

  /// Creates a new [GetInstanceCrossInstanceReplicationConfigMembership].
  /// [primaryInstances] Details of the primary instance that is used as the replication source for all the secondary instances.
  /// [secondaryInstances] List of secondary instances that are replicating from the primary instance.
  GetInstanceCrossInstanceReplicationConfigMembership({
    required this.primaryInstances,
    required this.secondaryInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryInstances': pulumi.Input.mapInputValue<List<GetInstanceCrossInstanceReplicationConfigMembershipPrimaryInstance>, List<Map<String, dynamic>>>(primaryInstances, (value) => pulumi.Input.encodeList<GetInstanceCrossInstanceReplicationConfigMembershipPrimaryInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secondaryInstances': pulumi.Input.mapInputValue<List<GetInstanceCrossInstanceReplicationConfigMembershipSecondaryInstance>, List<Map<String, dynamic>>>(secondaryInstances, (value) => pulumi.Input.encodeList<GetInstanceCrossInstanceReplicationConfigMembershipSecondaryInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstanceCrossInstanceReplicationConfigMembership.fromMap(Map<String, dynamic> map) {
    return GetInstanceCrossInstanceReplicationConfigMembership(
      primaryInstances: (pulumi.Input.decodeList<GetInstanceCrossInstanceReplicationConfigMembershipPrimaryInstance>(map['primaryInstances'], (value) => GetInstanceCrossInstanceReplicationConfigMembershipPrimaryInstance.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secondaryInstances: (pulumi.Input.decodeList<GetInstanceCrossInstanceReplicationConfigMembershipSecondaryInstance>(map['secondaryInstances'], (value) => GetInstanceCrossInstanceReplicationConfigMembershipSecondaryInstance.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

