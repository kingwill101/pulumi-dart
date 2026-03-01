// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_throttle_groups_throttle_group.dart';

class DomainThrottleGroups {
  /// Sets individual throttle group configurations.
  final List<DomainThrottleGroupsThrottleGroup>? throttleGroups;

  /// Creates a new [DomainThrottleGroups].
  /// [throttleGroups] Sets individual throttle group configurations.
  DomainThrottleGroups({
    this.throttleGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'throttleGroups': ?throttleGroups == null ? null : pulumi.Input.encodeList<DomainThrottleGroupsThrottleGroup, Map<String, dynamic>>(throttleGroups!, (value) => value.toMap()),
    };
  }

  factory DomainThrottleGroups.fromMap(Map<String, dynamic> map) {
    return DomainThrottleGroups(
      throttleGroups: map['throttleGroups'] == null ? null : pulumi.Input.decodeList<DomainThrottleGroupsThrottleGroup>(map['throttleGroups'], (value) => DomainThrottleGroupsThrottleGroup.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

