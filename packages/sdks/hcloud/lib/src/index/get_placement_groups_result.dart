// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_placement_groups_placement_group.dart';

/// Result data returned by getPlacementGroups.
class GetPlacementGroupsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? mostRecent;
  /// (list) List of all matching placement groups. See `data.hcloud_placement_group` for schema.
  final List<GetPlacementGroupsPlacementGroup> placementGroups;
  final String? withSelector;

  /// Creates a new [GetPlacementGroupsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [mostRecent] Optional.
  /// [placementGroups] (list) List of all matching placement groups. See `data.hcloud_placement_group` for schema.
  /// [withSelector] Optional.
  GetPlacementGroupsResult({
    required this.id,
    this.mostRecent,
    required this.placementGroups,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'mostRecent': ?mostRecent,
      'placementGroups': pulumi.Input.encodeList<GetPlacementGroupsPlacementGroup, Map<String, dynamic>>(placementGroups, (value) => value.toMap()),
      'withSelector': ?withSelector,
    };
  }

  factory GetPlacementGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupsResult(
      id: map['id'] as String,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent']! as bool,
      placementGroups: pulumi.Input.decodeList<GetPlacementGroupsPlacementGroup>(map['placementGroups'], (value) => GetPlacementGroupsPlacementGroup.fromMap((value as Map).cast<String, dynamic>())),
      withSelector: map['withSelector'] == null ? null : map['withSelector']! as String,
    );
  }
}

