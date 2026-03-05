// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StandardAppVersionBasicScaling {
  /// Duration of time after the last request that an instance must wait before the instance is shut down.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s". Defaults to 900s.
  final pulumi.Input<String>? idleTimeout;
  /// Maximum number of instances to create for this version. Must be in the range [1.0, 200.0].
  final pulumi.Input<int> maxInstances;

  /// Creates a new [StandardAppVersionBasicScaling].
  /// [idleTimeout] Duration of time after the last request that an instance must wait before the instance is shut down.
  /// [maxInstances] Maximum number of instances to create for this version. Must be in the range [1.0, 200.0].
  StandardAppVersionBasicScaling({
    this.idleTimeout,
    required this.maxInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleTimeout': ?idleTimeout,
      'maxInstances': maxInstances,
    };
  }

  factory StandardAppVersionBasicScaling.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionBasicScaling(
      idleTimeout: (() { final guardedValue = map['idleTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxInstances: pulumi.Input.fromValue(map['maxInstances'] as int),
    );
  }
}

