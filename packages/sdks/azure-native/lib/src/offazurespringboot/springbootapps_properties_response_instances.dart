// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringbootappsPropertiesResponseInstances {
  /// The instance count of this app instance
  final pulumi.Input<int>? instanceCount;
  /// The jvm heap memory allocated of this app instance
  final pulumi.Input<int>? jvmMemoryInMB;
  /// The machine ARM resource Id of this app instance
  final pulumi.Input<String> machineArmId;

  /// Creates a new [SpringbootappsPropertiesResponseInstances].
  /// [instanceCount] The instance count of this app instance
  /// [jvmMemoryInMB] The jvm heap memory allocated of this app instance
  /// [machineArmId] The machine ARM resource Id of this app instance
  const SpringbootappsPropertiesResponseInstances({
    this.instanceCount,
    this.jvmMemoryInMB,
    required this.machineArmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
      'jvmMemoryInMB': ?jvmMemoryInMB,
      'machineArmId': machineArmId,
    };
  }

  factory SpringbootappsPropertiesResponseInstances.fromMap(Map<String, dynamic> map) {
    return SpringbootappsPropertiesResponseInstances(
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      jvmMemoryInMB: (() { final guardedValue = map['jvmMemoryInMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      machineArmId: pulumi.Input.fromValue(map['machineArmId'] as String),
    );
  }
}

