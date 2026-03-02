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
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetPlacementGroupsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
      'placementGroups': pulumi.Input.encodeList<GetPlacementGroupsPlacementGroup, Map<String, dynamic>>(placementGroups, (value) => value.toMap()),
    };
  }

  factory GetPlacementGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupsResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetPlacementGroupsFilter>(map['filters']!, (value) => GetPlacementGroupsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      order: map['order'] == null ? null : map['order']! as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy']! as String,
      placementGroups: pulumi.Input.decodeList<GetPlacementGroupsPlacementGroup>(map['placementGroups'], (value) => GetPlacementGroupsPlacementGroup.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

