// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_throttle_groups_throttle_group.dart';

class DomainThrottleGroups {
  /// Sets individual throttle group configurations.
  final pulumi.Input<List<DomainThrottleGroupsThrottleGroup>>? throttleGroups;

  /// Creates a new [DomainThrottleGroups].
  /// [throttleGroups] Sets individual throttle group configurations.
  const DomainThrottleGroups({
    this.throttleGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'throttleGroups': ?pulumi.Input.mapOptionalInputValue<List<DomainThrottleGroupsThrottleGroup>, List<Map<String, dynamic>>>(throttleGroups, (value) => pulumi.Input.encodeList<DomainThrottleGroupsThrottleGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainThrottleGroups.fromMap(Map<String, dynamic> map) {
    return DomainThrottleGroups(
      throttleGroups: (() { final guardedValue = map['throttleGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainThrottleGroupsThrottleGroup>(guardedValue, (value) => DomainThrottleGroupsThrottleGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
