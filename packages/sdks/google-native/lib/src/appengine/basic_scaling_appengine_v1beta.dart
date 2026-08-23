// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
class BasicScalingAppengineV1beta {
  /// Duration of time after the last request that an instance must wait before the instance is shut down.
  final pulumi.Input<String>? idleTimeout;
  /// Maximum number of instances to create for this version.
  final pulumi.Input<int>? maxInstances;

  /// Creates a new [BasicScalingAppengineV1beta].
  /// [idleTimeout] Duration of time after the last request that an instance must wait before the instance is shut down.
  /// [maxInstances] Maximum number of instances to create for this version.
  const BasicScalingAppengineV1beta({
    this.idleTimeout,
    this.maxInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleTimeout': ?idleTimeout,
      'maxInstances': ?maxInstances,
    };
  }

  factory BasicScalingAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return BasicScalingAppengineV1beta(
      idleTimeout: (() { final guardedValue = map['idleTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxInstances: (() { final guardedValue = map['maxInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
