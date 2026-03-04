// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstancePlacementGroup {
  final pulumi.Input<bool>? compliantOnly;

  /// The ID of the Placement Group.
  final pulumi.Input<int> id;

  /// The Linode's label is for display purposes only. If no label is provided for a Linode, a default will be assigned.
  final pulumi.Input<String>? label;

  /// Whether the Placement Group enforces strict compliance.
  final pulumi.Input<String>? placementGroupPolicy;

  /// The placement group type enforced by the Placement Group.
  final pulumi.Input<String>? placementGroupType;

  /// Creates a new [InstancePlacementGroup].
  /// [compliantOnly] Optional.
  /// [id] The ID of the Placement Group.
  /// [label] The Linode's label is for display purposes only. If no label is provided for a Linode, a default will be assigned.
  /// [placementGroupPolicy] Whether the Placement Group enforces strict compliance.
  /// [placementGroupType] The placement group type enforced by the Placement Group.
  InstancePlacementGroup({
    this.compliantOnly,
    required this.id,
    this.label,
    this.placementGroupPolicy,
    this.placementGroupType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compliantOnly': ?compliantOnly,
      'id': id,
      'label': ?label,
      'placementGroupPolicy': ?placementGroupPolicy,
      'placementGroupType': ?placementGroupType,
    };
  }

  factory InstancePlacementGroup.fromMap(Map<String, dynamic> map) {
    return InstancePlacementGroup(
      compliantOnly: (() {
        final guardedValue = map['compliantOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      id: pulumi.Input.fromValue(map['id'] as int),
      label: (() {
        final guardedValue = map['label'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      placementGroupPolicy: (() {
        final guardedValue = map['placementGroupPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      placementGroupType: (() {
        final guardedValue = map['placementGroupType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
