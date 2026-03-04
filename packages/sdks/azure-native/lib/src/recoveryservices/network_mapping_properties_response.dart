// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_to_azure_network_mapping_settings_response.dart';

/// Network Mapping Properties.
class NetworkMappingPropertiesResponse {
  /// The fabric specific settings.
  final pulumi.Input<AzureToAzureNetworkMappingSettingsResponse>?
  fabricSpecificSettings;

  /// The primary fabric friendly name.
  final pulumi.Input<String>? primaryFabricFriendlyName;

  /// The primary network friendly name.
  final pulumi.Input<String>? primaryNetworkFriendlyName;

  /// The primary network id for network mapping.
  final pulumi.Input<String>? primaryNetworkId;

  /// The recovery fabric ARM id.
  final pulumi.Input<String>? recoveryFabricArmId;

  /// The recovery fabric friendly name.
  final pulumi.Input<String>? recoveryFabricFriendlyName;

  /// The recovery network friendly name.
  final pulumi.Input<String>? recoveryNetworkFriendlyName;

  /// The recovery network id for network mapping.
  final pulumi.Input<String>? recoveryNetworkId;

  /// The pairing state for network mapping.
  final pulumi.Input<String>? state;

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
      'fabricSpecificSettings':
          ?pulumi.Input.mapOptionalInputValue<
            AzureToAzureNetworkMappingSettingsResponse,
            Map<String, dynamic>
          >(fabricSpecificSettings, (value) => value.toMap()),
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
      fabricSpecificSettings: (() {
        final guardedValue = map['fabricSpecificSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureToAzureNetworkMappingSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      primaryFabricFriendlyName: (() {
        final guardedValue = map['primaryFabricFriendlyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryNetworkFriendlyName: (() {
        final guardedValue = map['primaryNetworkFriendlyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryNetworkId: (() {
        final guardedValue = map['primaryNetworkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryFabricArmId: (() {
        final guardedValue = map['recoveryFabricArmId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryFabricFriendlyName: (() {
        final guardedValue = map['recoveryFabricFriendlyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryNetworkFriendlyName: (() {
        final guardedValue = map['recoveryNetworkFriendlyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryNetworkId: (() {
        final guardedValue = map['recoveryNetworkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
