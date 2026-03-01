// ignore_for_file: unused_element, unnecessary_cast

import 'azure_to_azure_network_mapping_settings_response.dart';

/// Network Mapping Properties.
class NetworkMappingPropertiesResponse {
  /// The fabric specific settings.
  final AzureToAzureNetworkMappingSettingsResponse? fabricSpecificSettings;
  /// The primary fabric friendly name.
  final String? primaryFabricFriendlyName;
  /// The primary network friendly name.
  final String? primaryNetworkFriendlyName;
  /// The primary network id for network mapping.
  final String? primaryNetworkId;
  /// The recovery fabric ARM id.
  final String? recoveryFabricArmId;
  /// The recovery fabric friendly name.
  final String? recoveryFabricFriendlyName;
  /// The recovery network friendly name.
  final String? recoveryNetworkFriendlyName;
  /// The recovery network id for network mapping.
  final String? recoveryNetworkId;
  /// The pairing state for network mapping.
  final String? state;

  /// Creates a new [NetworkMappingPropertiesResponse].
  /// [fabricSpecificSettings] The fabric specific settings.
  /// [primaryFabricFriendlyName] The primary fabric friendly name.
  /// [primaryNetworkFriendlyName] The primary network friendly name.
  /// [primaryNetworkId] The primary network id for network mapping.
  /// [recoveryFabricArmId] The recovery fabric ARM id.
  /// [recoveryFabricFriendlyName] The recovery fabric friendly name.
  /// [recoveryNetworkFriendlyName] The recovery network friendly name.
  /// [recoveryNetworkId] The recovery network id for network mapping.
  /// [state] The pairing state for network mapping.
  NetworkMappingPropertiesResponse({
    this.fabricSpecificSettings,
    this.primaryFabricFriendlyName,
    this.primaryNetworkFriendlyName,
    this.primaryNetworkId,
    this.recoveryFabricArmId,
    this.recoveryFabricFriendlyName,
    this.recoveryNetworkFriendlyName,
    this.recoveryNetworkId,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricSpecificSettings': ?fabricSpecificSettings == null ? null : fabricSpecificSettings!.toMap(),
      'primaryFabricFriendlyName': ?primaryFabricFriendlyName,
      'primaryNetworkFriendlyName': ?primaryNetworkFriendlyName,
      'primaryNetworkId': ?primaryNetworkId,
      'recoveryFabricArmId': ?recoveryFabricArmId,
      'recoveryFabricFriendlyName': ?recoveryFabricFriendlyName,
      'recoveryNetworkFriendlyName': ?recoveryNetworkFriendlyName,
      'recoveryNetworkId': ?recoveryNetworkId,
      'state': ?state,
    };
  }

  factory NetworkMappingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NetworkMappingPropertiesResponse(
      fabricSpecificSettings: map['fabricSpecificSettings'] == null ? null : AzureToAzureNetworkMappingSettingsResponse.fromMap((map['fabricSpecificSettings'] as Map).cast<String, dynamic>()),
      primaryFabricFriendlyName: map['primaryFabricFriendlyName'] == null ? null : map['primaryFabricFriendlyName'] as String,
      primaryNetworkFriendlyName: map['primaryNetworkFriendlyName'] == null ? null : map['primaryNetworkFriendlyName'] as String,
      primaryNetworkId: map['primaryNetworkId'] == null ? null : map['primaryNetworkId'] as String,
      recoveryFabricArmId: map['recoveryFabricArmId'] == null ? null : map['recoveryFabricArmId'] as String,
      recoveryFabricFriendlyName: map['recoveryFabricFriendlyName'] == null ? null : map['recoveryFabricFriendlyName'] as String,
      recoveryNetworkFriendlyName: map['recoveryNetworkFriendlyName'] == null ? null : map['recoveryNetworkFriendlyName'] as String,
      recoveryNetworkId: map['recoveryNetworkId'] == null ? null : map['recoveryNetworkId'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

