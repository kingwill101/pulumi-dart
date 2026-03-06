// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceGroupManagerStatusVersionTarget {
  /// A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  final pulumi.Input<bool> isReached;

  /// Creates a new [GetInstanceGroupManagerStatusVersionTarget].
  /// [isReached] A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  const GetInstanceGroupManagerStatusVersionTarget({
    required this.isReached,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isReached': isReached,
    };
  }

  factory GetInstanceGroupManagerStatusVersionTarget.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerStatusVersionTarget(
      isReached: pulumi.Input.fromValue(map['isReached'] as bool),
    );
  }
}

