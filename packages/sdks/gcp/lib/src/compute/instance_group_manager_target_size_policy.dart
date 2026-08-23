// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerTargetSizePolicy {
  /// The mode of target size policy based on which the MIG creates its VMs individually or all at once. Values: "BULK", "INDIVIDUAL".
  final pulumi.Input<String> mode;

  /// Creates a new [InstanceGroupManagerTargetSizePolicy].
  /// [mode] The mode of target size policy based on which the MIG creates its VMs individually or all at once. Values: "BULK", "INDIVIDUAL".
  const InstanceGroupManagerTargetSizePolicy({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory InstanceGroupManagerTargetSizePolicy.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerTargetSizePolicy(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
