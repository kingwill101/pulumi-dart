// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskResourceManagerTag {
  /// , The unique key of the resource manager tag to assign to disks. Keys must be in the format tagKeys/{tag_key_id}.
  final pulumi.Input<String> key;
  /// , The value of the resource manager tag to assign to disks. Values must be in the format tagValues/456.
  /// - - -
  final pulumi.Input<String> value;

  /// Creates a new [RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskResourceManagerTag].
  /// [key] , The unique key of the resource manager tag to assign to disks. Keys must be in the format tagKeys/{tag_key_id}.
  /// [value] , The value of the resource manager tag to assign to disks. Values must be in the format tagValues/456.
  RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskResourceManagerTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskResourceManagerTag.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskResourceManagerTag(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

