// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScaleSetPacketCaptureMachineScope {
  /// A list of Virtual Machine Scale Set instance IDs which should be excluded from running Packet Capture, e.g. `["0", "2"]`. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? excludeInstanceIds;
  /// A list of Virtual Machine Scale Set instance IDs which should be included for Packet Capture, e.g. `["1", "3"]`. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? includeInstanceIds;

  /// Creates a new [ScaleSetPacketCaptureMachineScope].
  /// [excludeInstanceIds] A list of Virtual Machine Scale Set instance IDs which should be excluded from running Packet Capture, e.g. `["0", "2"]`. Changing this forces a new resource to be created.
  /// [includeInstanceIds] A list of Virtual Machine Scale Set instance IDs which should be included for Packet Capture, e.g. `["1", "3"]`. Changing this forces a new resource to be created.
  const ScaleSetPacketCaptureMachineScope({
    this.excludeInstanceIds,
    this.includeInstanceIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeInstanceIds': ?excludeInstanceIds,
      'includeInstanceIds': ?includeInstanceIds,
    };
  }

  factory ScaleSetPacketCaptureMachineScope.fromMap(Map<String, dynamic> map) {
    return ScaleSetPacketCaptureMachineScope(
      excludeInstanceIds: (() { final guardedValue = map['excludeInstanceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeInstanceIds: (() { final guardedValue = map['includeInstanceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

