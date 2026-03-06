// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_placement_groups_placement_group_member.dart';
import 'get_placement_groups_placement_group_migrations.dart';

class GetPlacementGroupsPlacementGroup {
  /// The ID of the placement group.
  final pulumi.Input<int> id;
  /// Whether this Linode is currently compliant with the group's placement group type.
  final pulumi.Input<bool> isCompliant;
  /// The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  final pulumi.Input<String> label;
  /// A set of Linodes currently assigned to this Placement Group.
  final pulumi.Input<List<GetPlacementGroupsPlacementGroupMember>> members;
  /// Any Linodes that are being migrated to or from the placement group.
  final pulumi.Input<GetPlacementGroupsPlacementGroupMigrations> migrations;
  /// Whether Linodes must be able to become compliant during assignment. (Default `strict`)
  final pulumi.Input<String> placementGroupPolicy;
  /// The placement group type to use when placing Linodes in this group.
  final pulumi.Input<String> placementGroupType;
  /// The region of the Placement Group.
  final pulumi.Input<String> region;

  /// Creates a new [GetPlacementGroupsPlacementGroup].
  /// [id] The ID of the placement group.
  /// [isCompliant] Whether this Linode is currently compliant with the group's placement group type.
  /// [label] The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  /// [members] A set of Linodes currently assigned to this Placement Group.
  /// [migrations] Any Linodes that are being migrated to or from the placement group.
  /// [placementGroupPolicy] Whether Linodes must be able to become compliant during assignment. (Default `strict`)
  /// [placementGroupType] The placement group type to use when placing Linodes in this group.
  /// [region] The region of the Placement Group.
  const GetPlacementGroupsPlacementGroup({
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
      'members': pulumi.Input.mapInputValue<List<GetPlacementGroupsPlacementGroupMember>, List<Map<String, dynamic>>>(members, (value) => pulumi.Input.encodeList<GetPlacementGroupsPlacementGroupMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'migrations': pulumi.Input.mapInputValue<GetPlacementGroupsPlacementGroupMigrations, Map<String, dynamic>>(migrations, (value) => value.toMap()),
      'placementGroupPolicy': placementGroupPolicy,
      'placementGroupType': placementGroupType,
      'region': region,
    };
  }

  factory GetPlacementGroupsPlacementGroup.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupsPlacementGroup(
      id: pulumi.Input.fromValue(map['id'] as int),
      isCompliant: pulumi.Input.fromValue(map['isCompliant'] as bool),
      label: pulumi.Input.fromValue(map['label'] as String),
      members: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPlacementGroupsPlacementGroupMember>(map['members']!, (value) => GetPlacementGroupsPlacementGroupMember.fromMap((value as Map).cast<String, dynamic>()))),
      migrations: pulumi.Input.fromValue(GetPlacementGroupsPlacementGroupMigrations.fromMap((map['migrations']! as Map).cast<String, dynamic>())),
      placementGroupPolicy: pulumi.Input.fromValue(map['placementGroupPolicy'] as String),
      placementGroupType: pulumi.Input.fromValue(map['placementGroupType'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

