// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskThrottleFiltersThrottleFilter {
  /// Sets the group name for the throttle filter applied to the disk device.
  final pulumi.Input<String> group;

  /// Creates a new [DomainDevicesDiskThrottleFiltersThrottleFilter].
  /// [group] Sets the group name for the throttle filter applied to the disk device.
  const DomainDevicesDiskThrottleFiltersThrottleFilter({
    required this.group,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': group,
    };
  }

  factory DomainDevicesDiskThrottleFiltersThrottleFilter.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskThrottleFiltersThrottleFilter(
      group: pulumi.Input.fromValue(map['group'] as String),
    );
  }
}
