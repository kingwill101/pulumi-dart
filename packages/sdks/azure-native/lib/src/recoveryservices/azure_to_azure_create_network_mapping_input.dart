// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Create network mappings input properties/behavior specific to Azure to Azure Network mapping.
class AzureToAzureCreateNetworkMappingInput {
  /// The instance type.
  /// Expected value is 'AzureToAzure'.
  final pulumi.Input<String> instanceType;
  /// The primary azure vnet Id.
  final pulumi.Input<String> primaryNetworkId;

  /// Creates a new [AzureToAzureCreateNetworkMappingInput].
  /// [instanceType] The instance type.
  /// [primaryNetworkId] The primary azure vnet Id.
  const AzureToAzureCreateNetworkMappingInput({
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
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      primaryNetworkId: pulumi.Input.fromValue(map['primaryNetworkId'] as String),
    );
  }
}
