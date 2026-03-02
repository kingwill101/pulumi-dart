// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringbootappsPropertiesInstances {
  /// The instance count of this app instance
  final pulumi.Input<int>? instanceCount;
  /// The jvm heap memory allocated of this app instance
  final pulumi.Input<int>? jvmMemoryInMB;
  /// The machine ARM resource Id of this app instance
  final pulumi.Input<String> machineArmId;

  /// Creates a new [SpringbootappsPropertiesInstances].
  /// [instanceCount] The instance count of this app instance
  /// [jvmMemoryInMB] The jvm heap memory allocated of this app instance
  /// [machineArmId] The machine ARM resource Id of this app instance
  SpringbootappsPropertiesInstances({
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

  factory SpringbootappsPropertiesInstances.fromMap(Map<String, dynamic> map) {
    return SpringbootappsPropertiesInstances(
      instanceCount: map['instanceCount'] == null ? null : (map['instanceCount']! as int).input(),
      jvmMemoryInMB: map['jvmMemoryInMB'] == null ? null : (map['jvmMemoryInMB']! as int).input(),
      machineArmId: (map['machineArmId'] as String).input(),
    );
  }
}

