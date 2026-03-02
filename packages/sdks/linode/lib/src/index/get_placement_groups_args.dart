// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_placement_groups_filter.dart';

/// {@template pulumi_index_get_placement_groups_get_placement_groups_args_doc}
/// Arguments for getPlacementGroups.
/// {@endtemplate}
/// {@macro pulumi_index_get_placement_groups_get_placement_groups_args_doc}
class GetPlacementGroupsArgs {
  final pulumi.Input<List<GetPlacementGroupsFilter>>? filters;
  final pulumi.Input<String>? order;
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetPlacementGroupsArgs].
  /// [filters] Optional.
  /// [order] Optional.
  /// [orderBy] Optional.
  GetPlacementGroupsArgs({
    this.filters,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetPlacementGroupsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetPlacementGroupsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetPlacementGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupsArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetPlacementGroupsFilter>(map['filters'], (value) => GetPlacementGroupsFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      order: map['order'] == null ? null : (map['order'] as String).input(),
      orderBy: map['orderBy'] == null ? null : (map['orderBy'] as String).input(),
    );
  }
}

