// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_placement_groups_placement_group_migrations_inbound.dart';
import 'get_placement_groups_placement_group_migrations_outbound.dart';

class GetPlacementGroupsPlacementGroupMigrations {
  /// A list of the Linodes the system is migrating into the placement group.
  final pulumi.Input<List<GetPlacementGroupsPlacementGroupMigrationsInbound>> inbounds;
  /// A list of the Linodes the system is migrating out of the placement group.
  final pulumi.Input<List<GetPlacementGroupsPlacementGroupMigrationsOutbound>> outbounds;

  /// Creates a new [GetPlacementGroupsPlacementGroupMigrations].
  /// [inbounds] A list of the Linodes the system is migrating into the placement group.
  /// [outbounds] A list of the Linodes the system is migrating out of the placement group.
  const GetPlacementGroupsPlacementGroupMigrations({
    required this.inbounds,
    required this.outbounds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inbounds': pulumi.Input.mapInputValue<List<GetPlacementGroupsPlacementGroupMigrationsInbound>, List<Map<String, dynamic>>>(inbounds, (value) => pulumi.Input.encodeList<GetPlacementGroupsPlacementGroupMigrationsInbound, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outbounds': pulumi.Input.mapInputValue<List<GetPlacementGroupsPlacementGroupMigrationsOutbound>, List<Map<String, dynamic>>>(outbounds, (value) => pulumi.Input.encodeList<GetPlacementGroupsPlacementGroupMigrationsOutbound, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetPlacementGroupsPlacementGroupMigrations.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupsPlacementGroupMigrations(
      inbounds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPlacementGroupsPlacementGroupMigrationsInbound>(map['inbounds']!, (value) => GetPlacementGroupsPlacementGroupMigrationsInbound.fromMap((value as Map).cast<String, dynamic>()))),
      outbounds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPlacementGroupsPlacementGroupMigrationsOutbound>(map['outbounds']!, (value) => GetPlacementGroupsPlacementGroupMigrationsOutbound.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

