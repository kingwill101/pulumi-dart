// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel {
  /// The unique key of the label to assign to disks.
  final pulumi.Input<String> key;
  /// The value of the label to assign to disks.
  final pulumi.Input<String> value;

  /// Creates a new [GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel].
  /// [key] The unique key of the label to assign to disks.
  /// [value] The value of the label to assign to disks.
  const GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

