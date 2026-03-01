// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_group_member.dart';

/// Input properties used for looking up and filtering PlacementGroup resources.
class PlacementGroupState {
  /// Whether this Linode is currently compliant with the group's placement group type.
  final pulumi.Input<bool>? isCompliant;
  /// The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  final pulumi.Input<String>? label;
  /// A set of Linodes currently assigned to this Placement Group.
  final pulumi.Input<List<PlacementGroupMember>>? members;
  /// Whether Linodes must be able to become compliant during assignment. (Default `strict`)
  final pulumi.Input<String>? placementGroupPolicy;
  /// The placement group type to use when placing Linodes in this group.
  final pulumi.Input<String>? placementGroupType;
  /// The region of the Placement Group.
  final pulumi.Input<String>? region;

  /// Creates a new [PlacementGroupState].
  /// [isCompliant] Whether this Linode is currently compliant with the group's placement group type.
  /// [label] The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  /// [members] A set of Linodes currently assigned to this Placement Group.
  /// [placementGroupPolicy] Whether Linodes must be able to become compliant during assignment. (Default `strict`)
  /// [placementGroupType] The placement group type to use when placing Linodes in this group.
  /// [region] The region of the Placement Group.
  PlacementGroupState({
    pulumi.Output<bool>? isCompliant,
    pulumi.Output<String>? label,
    pulumi.Output<List<PlacementGroupMember>>? members,
    pulumi.Output<String>? placementGroupPolicy,
    pulumi.Output<String>? placementGroupType,
    pulumi.Output<String>? region,
  }) :
      isCompliant = pulumi.Input.asOptionalInput<bool>(isCompliant),
      label = pulumi.Input.asOptionalInput<String>(label),
      members = pulumi.Input.asOptionalInput<List<PlacementGroupMember>>(members),
      placementGroupPolicy = pulumi.Input.asOptionalInput<String>(placementGroupPolicy),
      placementGroupType = pulumi.Input.asOptionalInput<String>(placementGroupType),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCompliant': ?isCompliant,
      'label': ?label,
      'members': ?pulumi.Input.mapOptionalInputValue<List<PlacementGroupMember>, List<Map<String, dynamic>>>(members, (value) => pulumi.Input.encodeList<PlacementGroupMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placementGroupPolicy': ?placementGroupPolicy,
      'placementGroupType': ?placementGroupType,
      'region': ?region,
    };
  }

  factory PlacementGroupState.fromMap(Map<String, dynamic> map) {
    return PlacementGroupState(
      isCompliant: map['isCompliant'] == null ? null : pulumi.Output.create<bool>(map['isCompliant'] as bool),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<PlacementGroupMember>>(pulumi.Input.decodeList<PlacementGroupMember>(map['members'], (value) => PlacementGroupMember.fromMap((value as Map).cast<String, dynamic>()))),
      placementGroupPolicy: map['placementGroupPolicy'] == null ? null : pulumi.Output.create<String>(map['placementGroupPolicy'] as String),
      placementGroupType: map['placementGroupType'] == null ? null : pulumi.Output.create<String>(map['placementGroupType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

