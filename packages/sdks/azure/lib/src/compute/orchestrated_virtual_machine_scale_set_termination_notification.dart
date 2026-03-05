// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrchestratedVirtualMachineScaleSetTerminationNotification {
  /// Should the termination notification be enabled on this Virtual Machine Scale Set? Possible values `true` or `false`.
  final pulumi.Input<bool> enabled;
  /// Length of time (in minutes, between `5` and `15`) a notification to be sent to the VM on the instance metadata server till the VM gets deleted. The time duration should be specified in `ISO 8601` format. Defaults to `PT5M`.
  final pulumi.Input<String>? timeout;

  /// Creates a new [OrchestratedVirtualMachineScaleSetTerminationNotification].
  /// [enabled] Should the termination notification be enabled on this Virtual Machine Scale Set? Possible values `true` or `false`.
  /// [timeout] Length of time (in minutes, between `5` and `15`) a notification to be sent to the VM on the instance metadata server till the VM gets deleted. The time duration should be specified in `ISO 8601` format. Defaults to `PT5M`.
  OrchestratedVirtualMachineScaleSetTerminationNotification({
    required this.enabled,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'timeout': ?timeout,
    };
  }

  factory OrchestratedVirtualMachineScaleSetTerminationNotification.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetTerminationNotification(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

