// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_placement_group_migrations_inbound.dart';
import 'get_placement_group_migrations_outbound.dart';

class GetPlacementGroupMigrations {
  /// A list of the Linodes the system is migrating into the placement group.
  final pulumi.Input<List<GetPlacementGroupMigrationsInbound>> inbounds;

  /// A list of the Linodes the system is migrating out of the placement group.
  final pulumi.Input<List<GetPlacementGroupMigrationsOutbound>> outbounds;

  /// Creates a new [GetPlacementGroupMigrations].
  /// [inbounds] A list of the Linodes the system is migrating into the placement group.
  /// [outbounds] A list of the Linodes the system is migrating out of the placement group.
  GetPlacementGroupMigrations({
    required this.inbounds,
    required this.outbounds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inbounds':
          pulumi.Input.mapInputValue<
            List<GetPlacementGroupMigrationsInbound>,
            List<Map<String, dynamic>>
          >(
            inbounds,
            (value) =>
                pulumi.Input.encodeList<
                  GetPlacementGroupMigrationsInbound,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'outbounds':
          pulumi.Input.mapInputValue<
            List<GetPlacementGroupMigrationsOutbound>,
            List<Map<String, dynamic>>
          >(
            outbounds,
            (value) =>
                pulumi.Input.encodeList<
                  GetPlacementGroupMigrationsOutbound,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetPlacementGroupMigrations.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupMigrations(
      inbounds: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetPlacementGroupMigrationsInbound>(
          map['inbounds']!,
          (value) => GetPlacementGroupMigrationsInbound.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      outbounds: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetPlacementGroupMigrationsOutbound>(
          map['outbounds']!,
          (value) => GetPlacementGroupMigrationsOutbound.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
