// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configure pairing input properties.
class CreateProtectionContainerMappingInputProperties {
  /// Applicable policy.
  final pulumi.Input<String?>? policyId;
  /// Provider specific input for pairing.
  final pulumi.Input<dynamic>? providerSpecificInput;
  /// The target unique protection container name.
  final pulumi.Input<String?>? targetProtectionContainerId;

  /// Creates a new [CreateProtectionContainerMappingInputProperties].
  /// [policyId] Applicable policy.
  /// [providerSpecificInput] Provider specific input for pairing.
  /// [targetProtectionContainerId] The target unique protection container name.
  const CreateProtectionContainerMappingInputProperties({
    this.policyId,
    this.providerSpecificInput,
    this.targetProtectionContainerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': ?policyId,
      'providerSpecificInput': ?providerSpecificInput,
      'targetProtectionContainerId': ?targetProtectionContainerId,
    };
  }

  factory CreateProtectionContainerMappingInputProperties.fromMap(Map<String, dynamic> map) {
    return CreateProtectionContainerMappingInputProperties(
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerSpecificInput: (() { final guardedValue = map['providerSpecificInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      targetProtectionContainerId: (() { final guardedValue = map['targetProtectionContainerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
