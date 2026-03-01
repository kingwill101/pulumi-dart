// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_placement_groups_placement_group_member.dart';
import 'get_placement_groups_placement_group_migrations.dart';

class GetPlacementGroupsPlacementGroup {
  /// The ID of the placement group.
  final int id;
  /// Whether this Linode is currently compliant with the group's placement group type.
  final bool isCompliant;
  /// The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  final String label;
  /// A set of Linodes currently assigned to this Placement Group.
  final List<GetPlacementGroupsPlacementGroupMember> members;
  /// Any Linodes that are being migrated to or from the placement group.
  final GetPlacementGroupsPlacementGroupMigrations migrations;
  /// Whether Linodes must be able to become compliant during assignment. (Default `strict`)
  final String placementGroupPolicy;
  /// The placement group type to use when placing Linodes in this group.
  final String placementGroupType;
  /// The region of the Placement Group.
  final String region;

  /// Creates a new [GetPlacementGroupsPlacementGroup].
  /// [id] The ID of the placement group.
  /// [isCompliant] Whether this Linode is currently compliant with the group's placement group type.
  /// [label] The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  /// [members] A set of Linodes currently assigned to this Placement Group.
  /// [migrations] Any Linodes that are being migrated to or from the placement group.
  /// [placementGroupPolicy] Whether Linodes must be able to become compliant during assignment. (Default `strict`)
  /// [placementGroupType] The placement group type to use when placing Linodes in this group.
  /// [region] The region of the Placement Group.
  GetPlacementGroupsPlacementGroup({
    required this.id,
    required this.isCompliant,
    required this.label,
    required this.members,
    required this.migrations,
    required this.placementGroupPolicy,
    required this.placementGroupType,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'isCompliant': isCompliant,
      'label': label,
      'members': pulumi.Input.encodeList<GetPlacementGroupsPlacementGroupMember, Map<String, dynamic>>(members, (value) => value.toMap()),
      'migrations': migrations.toMap(),
      'placementGroupPolicy': placementGroupPolicy,
      'placementGroupType': placementGroupType,
      'region': region,
    };
  }

  factory GetPlacementGroupsPlacementGroup.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupsPlacementGroup(
      id: map['id'] as int,
      isCompliant: map['isCompliant'] as bool,
      label: map['label'] as String,
      members: pulumi.Input.decodeList<GetPlacementGroupsPlacementGroupMember>(map['members'], (value) => GetPlacementGroupsPlacementGroupMember.fromMap((value as Map).cast<String, dynamic>())),
      migrations: GetPlacementGroupsPlacementGroupMigrations.fromMap((map['migrations'] as Map).cast<String, dynamic>()),
      placementGroupPolicy: map['placementGroupPolicy'] as String,
      placementGroupType: map['placementGroupType'] as String,
      region: map['region'] as String,
    );
  }
}

