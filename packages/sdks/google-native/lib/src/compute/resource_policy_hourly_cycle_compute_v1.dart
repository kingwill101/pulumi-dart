// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Time window specified for hourly operations.
class ResourcePolicyHourlyCycleComputeV1 {
  /// Defines a schedule with units measured in hours. The value determines how many hours pass between the start of each cycle.
  final pulumi.Input<int>? hoursInCycle;

  /// Time within the window to start the operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  final pulumi.Input<String>? startTime;

  /// Creates a new [ResourcePolicyHourlyCycleComputeV1].
  /// [hoursInCycle] Defines a schedule with units measured in hours. The value determines how many hours pass between the start of each cycle.
  /// [startTime] Time within the window to start the operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  ResourcePolicyHourlyCycleComputeV1({this.hoursInCycle, this.startTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hoursInCycle': ?hoursInCycle,
      'startTime': ?startTime,
    };
  }

  factory ResourcePolicyHourlyCycleComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyHourlyCycleComputeV1(
      hoursInCycle: (() {
        final guardedValue = map['hoursInCycle'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
