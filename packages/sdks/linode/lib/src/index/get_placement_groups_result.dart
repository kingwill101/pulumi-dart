// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_placement_groups_filter.dart';
import 'get_placement_groups_placement_group.dart';

/// Result data returned by getPlacementGroups.
class GetPlacementGroupsResult {
  final List<GetPlacementGroupsFilter>? filters;
  final String id;
  final String? order;
  final String? orderBy;
  final List<GetPlacementGroupsPlacementGroup> placementGroups;

  /// Creates a new [GetPlacementGroupsResult].
  /// [filters] Optional.
  /// [id] Required.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [placementGroups] Required.
  GetPlacementGroupsResult({
    this.filters,
    required this.id,
    this.order,
    this.orderBy,
    required this.placementGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPlacementGroupsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
      'placementGroups': pulumi.Input.encodeList<GetPlacementGroupsPlacementGroup, Map<String, dynamic>>(placementGroups, (value) => value.toMap()),
    };
  }

  factory GetPlacementGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPlacementGroupsFilter>(guardedValue, (value) => GetPlacementGroupsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      placementGroups: pulumi.Input.decodeList<GetPlacementGroupsPlacementGroup>(map['placementGroups']!, (value) => GetPlacementGroupsPlacementGroup.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

