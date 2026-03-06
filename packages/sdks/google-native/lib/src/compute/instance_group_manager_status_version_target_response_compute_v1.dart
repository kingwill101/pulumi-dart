// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerStatusVersionTargetResponseComputeV1 {
  /// A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  final pulumi.Input<bool> isReached;

  /// Creates a new [InstanceGroupManagerStatusVersionTargetResponseComputeV1].
  /// [isReached] A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  const InstanceGroupManagerStatusVersionTargetResponseComputeV1({
    required this.isReached,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isReached': isReached,
    };
  }

  factory InstanceGroupManagerStatusVersionTargetResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStatusVersionTargetResponseComputeV1(
      isReached: pulumi.Input.fromValue(map['isReached'] as bool),
    );
  }
}

