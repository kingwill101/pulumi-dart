// ignore_for_file: unused_element, unnecessary_cast


/// Create network mappings input properties/behavior specific to Vmm to Azure Network mapping.
class VmmToAzureCreateNetworkMappingInput {
  /// The instance type.
  /// Expected value is 'VmmToAzure'.
  final String instanceType;

  /// Creates a new [VmmToAzureCreateNetworkMappingInput].
  /// [instanceType] The instance type.
  VmmToAzureCreateNetworkMappingInput({
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
    };
  }

  factory VmmToAzureCreateNetworkMappingInput.fromMap(Map<String, dynamic> map) {
    return VmmToAzureCreateNetworkMappingInput(
      instanceType: map['instanceType'] as String,
    );
  }
}

