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
    this.isCompliant,
    this.label,
    this.members,
    this.placementGroupPolicy,
    this.placementGroupType,
    this.region,
  });

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
      isCompliant: (() { final guardedValue = map['isCompliant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlacementGroupMember>(guardedValue, (value) => PlacementGroupMember.fromMap((value as Map).cast<String, dynamic>()))); })(),
      placementGroupPolicy: (() { final guardedValue = map['placementGroupPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placementGroupType: (() { final guardedValue = map['placementGroupType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

