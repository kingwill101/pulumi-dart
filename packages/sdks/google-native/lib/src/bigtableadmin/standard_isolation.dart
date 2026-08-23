// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_isolation_priority.dart';

/// Standard options for isolating this app profile's traffic from other use cases.
class StandardIsolation {
  /// The priority of requests sent using this app profile.
  final pulumi.Input<StandardIsolationPriority>? priority;

  /// Creates a new [StandardIsolation].
  /// [priority] The priority of requests sent using this app profile.
  const StandardIsolation({
    this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': ?pulumi.Input.mapOptionalInputValue<StandardIsolationPriority, String>(priority, (value) => value.wireValue),
    };
  }

  factory StandardIsolation.fromMap(Map<String, dynamic> map) {
    return StandardIsolation(
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardIsolationPriority.fromValue(guardedValue as String)); })(),
    );
  }
}
