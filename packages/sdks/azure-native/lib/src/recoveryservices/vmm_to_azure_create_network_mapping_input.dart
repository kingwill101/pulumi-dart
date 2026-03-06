// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Create network mappings input properties/behavior specific to Vmm to Azure Network mapping.
class VmmToAzureCreateNetworkMappingInput {
  /// The instance type.
  /// Expected value is 'VmmToAzure'.
  final pulumi.Input<String> instanceType;

  /// Creates a new [VmmToAzureCreateNetworkMappingInput].
  /// [instanceType] The instance type.
  const VmmToAzureCreateNetworkMappingInput({
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
    };
  }

  factory VmmToAzureCreateNetworkMappingInput.fromMap(Map<String, dynamic> map) {
    return VmmToAzureCreateNetworkMappingInput(
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
    );
  }
}

