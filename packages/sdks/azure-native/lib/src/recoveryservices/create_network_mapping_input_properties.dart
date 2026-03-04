// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_to_azure_create_network_mapping_input.dart';

/// Common input details for network mapping operation.
class CreateNetworkMappingInputProperties {
  /// Fabric specific input properties.
  final pulumi.Input<AzureToAzureCreateNetworkMappingInput>?
  fabricSpecificDetails;

  /// Recovery fabric Name.
  final pulumi.Input<String>? recoveryFabricName;

  /// Recovery network Id.
  final pulumi.Input<String> recoveryNetworkId;

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
      'fabricSpecificDetails':
          ?pulumi.Input.mapOptionalInputValue<
            AzureToAzureCreateNetworkMappingInput,
            Map<String, dynamic>
          >(fabricSpecificDetails, (value) => value.toMap()),
      'recoveryFabricName': ?recoveryFabricName,
      'recoveryNetworkId': recoveryNetworkId,
    };
  }

  factory CreateNetworkMappingInputProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return CreateNetworkMappingInputProperties(
      fabricSpecificDetails: (() {
        final guardedValue = map['fabricSpecificDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureToAzureCreateNetworkMappingInput.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      recoveryFabricName: (() {
        final guardedValue = map['recoveryFabricName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryNetworkId: pulumi.Input.fromValue(
        map['recoveryNetworkId'] as String,
      ),
    );
  }
}
