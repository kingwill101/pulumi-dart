// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Time window specified for daily operations.
class ResourcePolicyDailyCycle {
  /// Defines a schedule with units measured in days. The value determines how many days pass between the start of each cycle.
  final pulumi.Input<int>? daysInCycle;
  /// Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  final pulumi.Input<String>? startTime;

  /// Creates a new [ResourcePolicyDailyCycle].
  /// [daysInCycle] Defines a schedule with units measured in days. The value determines how many days pass between the start of each cycle.
  /// [startTime] Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  const ResourcePolicyDailyCycle({
    this.daysInCycle,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysInCycle': ?daysInCycle,
      'startTime': ?startTime,
    };
  }

  factory ResourcePolicyDailyCycle.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyDailyCycle(
      daysInCycle: (() { final guardedValue = map['daysInCycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

