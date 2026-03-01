// ignore_for_file: unused_element, unnecessary_cast

import 'azure_to_azure_create_network_mapping_input.dart';

/// Common input details for network mapping operation.
class CreateNetworkMappingInputProperties {
  /// Fabric specific input properties.
  final AzureToAzureCreateNetworkMappingInput? fabricSpecificDetails;
  /// Recovery fabric Name.
  final String? recoveryFabricName;
  /// Recovery network Id.
  final String recoveryNetworkId;

  /// Creates a new [CreateNetworkMappingInputProperties].
  /// [fabricSpecificDetails] Fabric specific input properties.
  /// [recoveryFabricName] Recovery fabric Name.
  /// [recoveryNetworkId] Recovery network Id.
  CreateNetworkMappingInputProperties({
    this.fabricSpecificDetails,
    this.recoveryFabricName,
    required this.recoveryNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricSpecificDetails': ?fabricSpecificDetails == null ? null : fabricSpecificDetails!.toMap(),
      'recoveryFabricName': ?recoveryFabricName,
      'recoveryNetworkId': recoveryNetworkId,
    };
  }

  factory CreateNetworkMappingInputProperties.fromMap(Map<String, dynamic> map) {
    return CreateNetworkMappingInputProperties(
      fabricSpecificDetails: map['fabricSpecificDetails'] == null ? null : AzureToAzureCreateNetworkMappingInput.fromMap((map['fabricSpecificDetails'] as Map).cast<String, dynamic>()),
      recoveryFabricName: map['recoveryFabricName'] == null ? null : map['recoveryFabricName'] as String,
      recoveryNetworkId: map['recoveryNetworkId'] as String,
    );
  }
}

