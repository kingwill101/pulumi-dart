// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Capability resources.
class CapabilityState {
  /// The capability that should be applied to the Chaos Studio Target. For supported values please see this Chaos Studio [Fault Library](https://learn.microsoft.com/azure/chaos-studio/chaos-studio-fault-library). Changing this forces a new Chaos Studio Capability to be created.
  final pulumi.Input<String>? capabilityType;
  /// The Unique Resource Name of the Capability.
  final pulumi.Input<String>? capabilityUrn;
  /// The Chaos Studio Target that the capability should be applied to. Changing this forces a new Chaos Studio Capability to be created.
  final pulumi.Input<String>? chaosStudioTargetId;

  /// Creates a new [CapabilityState].
  /// [capabilityType] The capability that should be applied to the Chaos Studio Target. For supported values please see this Chaos Studio [Fault Library](https://learn.microsoft.com/azure/chaos-studio/chaos-studio-fault-library). Changing this forces a new Chaos Studio Capability to be created.
  /// [capabilityUrn] The Unique Resource Name of the Capability.
  /// [chaosStudioTargetId] The Chaos Studio Target that the capability should be applied to. Changing this forces a new Chaos Studio Capability to be created.
  CapabilityState({
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
      capabilityType: map['capabilityType'] == null ? null : (map['capabilityType']! as String).input(),
      capabilityUrn: map['capabilityUrn'] == null ? null : (map['capabilityUrn']! as String).input(),
      chaosStudioTargetId: map['chaosStudioTargetId'] == null ? null : (map['chaosStudioTargetId']! as String).input(),
    );
  }
}

