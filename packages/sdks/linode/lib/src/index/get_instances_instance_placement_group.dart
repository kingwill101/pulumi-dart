// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstancePlacementGroup {
  /// The ID of the Placement Group in the Linode API.
  final pulumi.Input<int> id;

  /// The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  final pulumi.Input<String> label;

  /// Whether Linodes must be able to become compliant during assignment. (Default `strict`)
  final pulumi.Input<String> placementGroupPolicy;

  /// The placement group type to use when placing Linodes in this group.
  final pulumi.Input<String> placementGroupType;

  /// Creates a new [GetInstancesInstancePlacementGroup].
  /// [id] The ID of the Placement Group in the Linode API.
  /// [label] The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  /// [placementGroupPolicy] Whether Linodes must be able to become compliant during assignment. (Default `strict`)
  /// [placementGroupType] The placement group type to use when placing Linodes in this group.
  GetInstancesInstancePlacementGroup({
    required this.id,
    required this.label,
    required this.placementGroupPolicy,
    required this.placementGroupType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'label': label,
      'placementGroupPolicy': placementGroupPolicy,
      'placementGroupType': placementGroupType,
    };
  }

  factory GetInstancesInstancePlacementGroup.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstancePlacementGroup(
      id: pulumi.Input.fromValue(map['id'] as int),
      label: pulumi.Input.fromValue(map['label'] as String),
      placementGroupPolicy: pulumi.Input.fromValue(
        map['placementGroupPolicy'] as String,
      ),
      placementGroupType: pulumi.Input.fromValue(
        map['placementGroupType'] as String,
      ),
    );
  }
}
