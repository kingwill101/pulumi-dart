// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionInstanceGroupManagerStatusVersionTarget {
  /// A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  final pulumi.Input<bool>? isReached;

  /// Creates a new [RegionInstanceGroupManagerStatusVersionTarget].
  /// [isReached] A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  RegionInstanceGroupManagerStatusVersionTarget({this.isReached});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'isReached': ?isReached};
  }

  factory RegionInstanceGroupManagerStatusVersionTarget.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionInstanceGroupManagerStatusVersionTarget(
      isReached: (() {
        final guardedValue = map['isReached'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
