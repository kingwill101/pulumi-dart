// ignore_for_file: unused_element, unnecessary_cast


/// Create network mappings input properties/behavior specific to Azure to Azure Network mapping.
class AzureToAzureCreateNetworkMappingInput {
  /// The instance type.
  /// Expected value is 'AzureToAzure'.
  final String instanceType;
  /// The primary azure vnet Id.
  final String primaryNetworkId;

  /// Creates a new [AzureToAzureCreateNetworkMappingInput].
  /// [instanceType] The instance type.
  /// [primaryNetworkId] The primary azure vnet Id.
  AzureToAzureCreateNetworkMappingInput({
    required this.instanceType,
    required this.primaryNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
      'primaryNetworkId': primaryNetworkId,
    };
  }

  factory AzureToAzureCreateNetworkMappingInput.fromMap(Map<String, dynamic> map) {
    return AzureToAzureCreateNetworkMappingInput(
      instanceType: map['instanceType'] as String,
      primaryNetworkId: map['primaryNetworkId'] as String,
    );
  }
}

