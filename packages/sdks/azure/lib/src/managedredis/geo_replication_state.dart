// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GeoReplication resources.
class GeoReplicationState {
  /// A set of other Managed Redis IDs to link together in the geo-replication group. The ID of this Managed Redis is always included by default and does not need to be provided here. Can contain up to 4 Managed Redis IDs, making up a group of 5 in total. All Managed Redis must have the same `geo_replication_group_name` configured. Once linked, the geo-replication state of all Managed Redis will be updated.
  final pulumi.Input<List<String>>? linkedManagedRedisIds;

  /// The ID of the Managed Redis through which geo-replication group will be managed. Linking is reciprocal, if A is linked to B, both A and B will have the same linking state. There is no need to have duplicate `azure.managedredis.GeoReplication` resources for each. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managedRedisId;

  /// Creates a new [GeoReplicationState].
  /// [linkedManagedRedisIds] A set of other Managed Redis IDs to link together in the geo-replication group. The ID of this Managed Redis is always included by default and does not need to be provided here. Can contain up to 4 Managed Redis IDs, making up a group of 5 in total. All Managed Redis must have the same `geo_replication_group_name` configured. Once linked, the geo-replication state of all Managed Redis will be updated.
  /// [managedRedisId] The ID of the Managed Redis through which geo-replication group will be managed. Linking is reciprocal, if A is linked to B, both A and B will have the same linking state. There is no need to have duplicate `azure.managedredis.GeoReplication` resources for each. Changing this forces a new resource to be created.
  GeoReplicationState({this.linkedManagedRedisIds, this.managedRedisId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedManagedRedisIds': ?linkedManagedRedisIds,
      'managedRedisId': ?managedRedisId,
    };
  }

  factory GeoReplicationState.fromMap(Map<String, dynamic> map) {
    return GeoReplicationState(
      linkedManagedRedisIds: (() {
        final guardedValue = map['linkedManagedRedisIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      managedRedisId: (() {
        final guardedValue = map['managedRedisId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
