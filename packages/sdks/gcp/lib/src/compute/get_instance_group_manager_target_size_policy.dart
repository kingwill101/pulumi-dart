// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceGroupManagerTargetSizePolicy {
  /// The mode of target size policy based on which the MIG creates its VMs individually or all at once.
  final pulumi.Input<String> mode;

  /// Creates a new [GetInstanceGroupManagerTargetSizePolicy].
  /// [mode] The mode of target size policy based on which the MIG creates its VMs individually or all at once.
  const GetInstanceGroupManagerTargetSizePolicy({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GetInstanceGroupManagerTargetSizePolicy.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerTargetSizePolicy(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
