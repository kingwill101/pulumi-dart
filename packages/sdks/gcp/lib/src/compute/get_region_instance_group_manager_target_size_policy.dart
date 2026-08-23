// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionInstanceGroupManagerTargetSizePolicy {
  /// The mode of target size policy based on which the MIG creates its VMs individually or all at once.
  final pulumi.Input<String> mode;

  /// Creates a new [GetRegionInstanceGroupManagerTargetSizePolicy].
  /// [mode] The mode of target size policy based on which the MIG creates its VMs individually or all at once.
  const GetRegionInstanceGroupManagerTargetSizePolicy({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GetRegionInstanceGroupManagerTargetSizePolicy.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerTargetSizePolicy(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
