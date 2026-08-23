// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionInstanceGroupManagerTargetSizePolicy {
  /// The mode of target size policy based on which the MIG creates its VMs individually or all at once. Values: "BULK", "INDIVIDUAL".
  final pulumi.Input<String> mode;

  /// Creates a new [RegionInstanceGroupManagerTargetSizePolicy].
  /// [mode] The mode of target size policy based on which the MIG creates its VMs individually or all at once. Values: "BULK", "INDIVIDUAL".
  const RegionInstanceGroupManagerTargetSizePolicy({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory RegionInstanceGroupManagerTargetSizePolicy.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerTargetSizePolicy(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
