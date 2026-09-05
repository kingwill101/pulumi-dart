// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Capability resources.
class CapabilityState {
  /// The capability that should be applied to the Chaos Studio Target. For supported values please see this Chaos Studio [Fault Library](https://learn.microsoft.com/azure/chaos-studio/chaos-studio-fault-library). Changing this forces a new Chaos Studio Capability to be created.
  final pulumi.Input<String?>? capabilityType;
  /// The Unique Resource Name of the Capability.
  final pulumi.Input<String?>? capabilityUrn;
  /// The Chaos Studio Target that the capability should be applied to. Changing this forces a new Chaos Studio Capability to be created.
  final pulumi.Input<String?>? chaosStudioTargetId;

  /// Creates a new [CapabilityState].
  /// [capabilityType] The capability that should be applied to the Chaos Studio Target. For supported values please see this Chaos Studio [Fault Library](https://learn.microsoft.com/azure/chaos-studio/chaos-studio-fault-library). Changing this forces a new Chaos Studio Capability to be created.
  /// [capabilityUrn] The Unique Resource Name of the Capability.
  /// [chaosStudioTargetId] The Chaos Studio Target that the capability should be applied to. Changing this forces a new Chaos Studio Capability to be created.
  const CapabilityState({
    this.capabilityType,
    this.capabilityUrn,
    this.chaosStudioTargetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilityType': ?capabilityType,
      'capabilityUrn': ?capabilityUrn,
      'chaosStudioTargetId': ?chaosStudioTargetId,
    };
  }

  factory CapabilityState.fromMap(Map<String, dynamic> map) {
    return CapabilityState(
      capabilityType: (() { final guardedValue = map['capabilityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capabilityUrn: (() { final guardedValue = map['capabilityUrn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      chaosStudioTargetId: (() { final guardedValue = map['chaosStudioTargetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
