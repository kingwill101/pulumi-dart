// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_placement_groups_placement_group_migrations_inbound.dart';
import 'get_placement_groups_placement_group_migrations_outbound.dart';

class GetPlacementGroupsPlacementGroupMigrations {
  /// A list of the Linodes the system is migrating into the placement group.
  final List<GetPlacementGroupsPlacementGroupMigrationsInbound> inbounds;
  /// A list of the Linodes the system is migrating out of the placement group.
  final List<GetPlacementGroupsPlacementGroupMigrationsOutbound> outbounds;

  /// Creates a new [GetPlacementGroupsPlacementGroupMigrations].
  /// [inbounds] A list of the Linodes the system is migrating into the placement group.
  /// [outbounds] A list of the Linodes the system is migrating out of the placement group.
  GetPlacementGroupsPlacementGroupMigrations({
    required this.inbounds,
    required this.outbounds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inbounds': pulumi.Input.encodeList<GetPlacementGroupsPlacementGroupMigrationsInbound, Map<String, dynamic>>(inbounds, (value) => value.toMap()),
      'outbounds': pulumi.Input.encodeList<GetPlacementGroupsPlacementGroupMigrationsOutbound, Map<String, dynamic>>(outbounds, (value) => value.toMap()),
    };
  }

  factory GetPlacementGroupsPlacementGroupMigrations.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupsPlacementGroupMigrations(
      inbounds: pulumi.Input.decodeList<GetPlacementGroupsPlacementGroupMigrationsInbound>(map['inbounds'], (value) => GetPlacementGroupsPlacementGroupMigrationsInbound.fromMap((value as Map).cast<String, dynamic>())),
      outbounds: pulumi.Input.decodeList<GetPlacementGroupsPlacementGroupMigrationsOutbound>(map['outbounds'], (value) => GetPlacementGroupsPlacementGroupMigrationsOutbound.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

