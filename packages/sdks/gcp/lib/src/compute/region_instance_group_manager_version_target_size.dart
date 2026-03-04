// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionInstanceGroupManagerVersionTargetSize {
  /// , The number of instances which are managed for this version. Conflicts with `percent`.
  final pulumi.Input<int>? fixed;

  /// , The number of instances (calculated as percentage) which are managed for this version. Conflicts with `fixed`.
  /// Note that when using `percent`, rounding will be in favor of explicitly set `target_size` values; a managed instance group with 2 instances and 2 `version`s,
  /// one of which has a `target_size.percent` of `60` will create 2 instances of that `version`.
  final pulumi.Input<int>? percent;

  /// Creates a new [RegionInstanceGroupManagerVersionTargetSize].
  /// [fixed] , The number of instances which are managed for this version. Conflicts with `percent`.
  /// [percent] , The number of instances (calculated as percentage) which are managed for this version. Conflicts with `fixed`.
  RegionInstanceGroupManagerVersionTargetSize({this.fixed, this.percent});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fixed': ?fixed, 'percent': ?percent};
  }

  factory RegionInstanceGroupManagerVersionTargetSize.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionInstanceGroupManagerVersionTargetSize(
      fixed: (() {
        final guardedValue = map['fixed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      percent: (() {
        final guardedValue = map['percent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
