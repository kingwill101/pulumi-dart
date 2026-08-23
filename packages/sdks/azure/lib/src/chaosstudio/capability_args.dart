// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chaosstudio_capability_capability_args_doc}
/// The set of arguments for Capability.
/// {@endtemplate}
/// {@macro pulumi_chaosstudio_capability_capability_args_doc}
class CapabilityArgs {
  /// The capability that should be applied to the Chaos Studio Target. For supported values please see this Chaos Studio [Fault Library](https://learn.microsoft.com/azure/chaos-studio/chaos-studio-fault-library). Changing this forces a new Chaos Studio Capability to be created.
  final pulumi.Input<String> capabilityType;
  /// The Chaos Studio Target that the capability should be applied to. Changing this forces a new Chaos Studio Capability to be created.
  final pulumi.Input<String> chaosStudioTargetId;

  /// Creates a new [CapabilityArgs].
  /// [capabilityType] The capability that should be applied to the Chaos Studio Target. For supported values please see this Chaos Studio [Fault Library](https://learn.microsoft.com/azure/chaos-studio/chaos-studio-fault-library). Changing this forces a new Chaos Studio Capability to be created.
  /// [chaosStudioTargetId] The Chaos Studio Target that the capability should be applied to. Changing this forces a new Chaos Studio Capability to be created.
  const CapabilityArgs({
    required this.capabilityType,
    required this.chaosStudioTargetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilityType': capabilityType,
      'chaosStudioTargetId': chaosStudioTargetId,
    };
  }

  factory CapabilityArgs.fromMap(Map<String, dynamic> map) {
    return CapabilityArgs(
      capabilityType: pulumi.Input.fromValue(map['capabilityType'] as String),
      chaosStudioTargetId: pulumi.Input.fromValue(map['chaosStudioTargetId'] as String),
    );
  }
}
