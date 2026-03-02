// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_acontainer_mapping_input.dart';

/// Configure pairing input properties.
class CreateProtectionContainerMappingInputProperties {
  /// Applicable policy.
  final pulumi.Input<String>? policyId;
  /// Provider specific input for pairing.
  final pulumi.Input<A2AContainerMappingInput>? providerSpecificInput;
  /// The target unique protection container name.
  final pulumi.Input<String>? targetProtectionContainerId;

  /// Creates a new [CreateProtectionContainerMappingInputProperties].
  /// [policyId] Applicable policy.
  /// [providerSpecificInput] Provider specific input for pairing.
  /// [targetProtectionContainerId] The target unique protection container name.
  CreateProtectionContainerMappingInputProperties({
    this.policyId,
    this.providerSpecificInput,
    this.targetProtectionContainerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': ?policyId,
      'providerSpecificInput': ?pulumi.Input.mapOptionalInputValue<A2AContainerMappingInput, Map<String, dynamic>>(providerSpecificInput, (value) => value.toMap()),
      'targetProtectionContainerId': ?targetProtectionContainerId,
    };
  }

  factory CreateProtectionContainerMappingInputProperties.fromMap(Map<String, dynamic> map) {
    return CreateProtectionContainerMappingInputProperties(
      policyId: map['policyId'] == null ? null : (map['policyId'] as String).input(),
      providerSpecificInput: map['providerSpecificInput'] == null ? null : (A2AContainerMappingInput.fromMap((map['providerSpecificInput'] as Map).cast<String, dynamic>())).input(),
      targetProtectionContainerId: map['targetProtectionContainerId'] == null ? null : (map['targetProtectionContainerId'] as String).input(),
    );
  }
}

