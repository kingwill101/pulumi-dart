// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_settings_response.dart';
import 'private_endpoint_connection_vault_properties_response.dart';
import 'restore_settings_response.dart';
import 'security_settings_response.dart';
import 'upgrade_details_response.dart';
import 'vault_properties_response_encryption.dart';
import 'vault_properties_response_move_details.dart';
import 'vault_properties_response_redundancy_settings.dart';

/// Properties of the vault.
class VaultPropertiesResponse {
  /// Backup storage version
  final pulumi.Input<String> backupStorageVersion;
  /// Security levels of Recovery Services Vault for business continuity and disaster recovery
  final pulumi.Input<String> bcdrSecurityLevel;
  /// Customer Managed Key details of the resource.
  final pulumi.Input<VaultPropertiesResponseEncryption>? encryption;
  /// Monitoring Settings of the vault
  final pulumi.Input<MonitoringSettingsResponse>? monitoringSettings;
  /// The details of the latest move operation performed on the Azure Resource
  final pulumi.Input<VaultPropertiesResponseMoveDetails>? moveDetails;
  /// The State of the Resource after the move operation
  final pulumi.Input<String> moveState;
  /// List of private endpoint connection.
  final pulumi.Input<List<PrivateEndpointConnectionVaultPropertiesResponse>> privateEndpointConnections;
  /// Private endpoint state for backup.
  final pulumi.Input<String> privateEndpointStateForBackup;
  /// Private endpoint state for site recovery.
  final pulumi.Input<String> privateEndpointStateForSiteRecovery;
  /// Provisioning State.
  final pulumi.Input<String> provisioningState;
  /// property to enable or disable resource provider inbound network traffic from public clients
  final pulumi.Input<String>? publicNetworkAccess;
  /// The redundancy Settings of a Vault
  final pulumi.Input<VaultPropertiesResponseRedundancySettings>? redundancySettings;
  /// ResourceGuardOperationRequests on which LAC check will be performed
  final pulumi.Input<List<String>>? resourceGuardOperationRequests;
  /// Restore Settings of the vault
  final pulumi.Input<RestoreSettingsResponse>? restoreSettings;
  /// Secure Score of Recovery Services Vault
  final pulumi.Input<String> secureScore;
  /// Security Settings of the vault
  final pulumi.Input<SecuritySettingsResponse>? securitySettings;
  /// Details for upgrading vault.
  final pulumi.Input<UpgradeDetailsResponse>? upgradeDetails;

  /// Creates a new [VaultPropertiesResponse].
  /// [backupStorageVersion] Backup storage version
  /// [bcdrSecurityLevel] Security levels of Recovery Services Vault for business continuity and disaster recovery
  /// [encryption] Customer Managed Key details of the resource.
  /// [monitoringSettings] Monitoring Settings of the vault
  /// [moveDetails] The details of the latest move operation performed on the Azure Resource
  /// [moveState] The State of the Resource after the move operation
  /// [privateEndpointConnections] List of private endpoint connection.
  /// [privateEndpointStateForBackup] Private endpoint state for backup.
  /// [privateEndpointStateForSiteRecovery] Private endpoint state for site recovery.
  /// [provisioningState] Provisioning State.
  /// [publicNetworkAccess] property to enable or disable resource provider inbound network traffic from public clients
  /// [redundancySettings] The redundancy Settings of a Vault
  /// [resourceGuardOperationRequests] ResourceGuardOperationRequests on which LAC check will be performed
  /// [restoreSettings] Restore Settings of the vault
  /// [secureScore] Secure Score of Recovery Services Vault
  /// [securitySettings] Security Settings of the vault
  /// [upgradeDetails] Details for upgrading vault.
  VaultPropertiesResponse({
    required this.backupStorageVersion,
    required this.bcdrSecurityLevel,
    this.encryption,
    this.monitoringSettings,
    this.moveDetails,
    required this.moveState,
    required this.privateEndpointConnections,
    required this.privateEndpointStateForBackup,
    required this.privateEndpointStateForSiteRecovery,
    required this.provisioningState,
    this.publicNetworkAccess,
    this.redundancySettings,
    this.resourceGuardOperationRequests,
    this.restoreSettings,
    required this.secureScore,
    this.securitySettings,
    this.upgradeDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupStorageVersion': backupStorageVersion,
      'bcdrSecurityLevel': bcdrSecurityLevel,
      'encryption': ?pulumi.Input.mapOptionalInputValue<VaultPropertiesResponseEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'monitoringSettings': ?pulumi.Input.mapOptionalInputValue<MonitoringSettingsResponse, Map<String, dynamic>>(monitoringSettings, (value) => value.toMap()),
      'moveDetails': ?pulumi.Input.mapOptionalInputValue<VaultPropertiesResponseMoveDetails, Map<String, dynamic>>(moveDetails, (value) => value.toMap()),
      'moveState': moveState,
      'privateEndpointConnections': pulumi.Input.mapInputValue<List<PrivateEndpointConnectionVaultPropertiesResponse>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnectionVaultPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateEndpointStateForBackup': privateEndpointStateForBackup,
      'privateEndpointStateForSiteRecovery': privateEndpointStateForSiteRecovery,
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'redundancySettings': ?pulumi.Input.mapOptionalInputValue<VaultPropertiesResponseRedundancySettings, Map<String, dynamic>>(redundancySettings, (value) => value.toMap()),
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'restoreSettings': ?pulumi.Input.mapOptionalInputValue<RestoreSettingsResponse, Map<String, dynamic>>(restoreSettings, (value) => value.toMap()),
      'secureScore': secureScore,
      'securitySettings': ?pulumi.Input.mapOptionalInputValue<SecuritySettingsResponse, Map<String, dynamic>>(securitySettings, (value) => value.toMap()),
      'upgradeDetails': ?pulumi.Input.mapOptionalInputValue<UpgradeDetailsResponse, Map<String, dynamic>>(upgradeDetails, (value) => value.toMap()),
    };
  }

  factory VaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VaultPropertiesResponse(
      backupStorageVersion: pulumi.Input.fromValue(map['backupStorageVersion'] as String),
      bcdrSecurityLevel: pulumi.Input.fromValue(map['bcdrSecurityLevel'] as String),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VaultPropertiesResponseEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoringSettings: (() { final guardedValue = map['monitoringSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitoringSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      moveDetails: (() { final guardedValue = map['moveDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VaultPropertiesResponseMoveDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      moveState: pulumi.Input.fromValue(map['moveState'] as String),
      privateEndpointConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointConnectionVaultPropertiesResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionVaultPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))),
      privateEndpointStateForBackup: pulumi.Input.fromValue(map['privateEndpointStateForBackup'] as String),
      privateEndpointStateForSiteRecovery: pulumi.Input.fromValue(map['privateEndpointStateForSiteRecovery'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redundancySettings: (() { final guardedValue = map['redundancySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VaultPropertiesResponseRedundancySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGuardOperationRequests: (() { final guardedValue = map['resourceGuardOperationRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      restoreSettings: (() { final guardedValue = map['restoreSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestoreSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secureScore: pulumi.Input.fromValue(map['secureScore'] as String),
      securitySettings: (() { final guardedValue = map['securitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecuritySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      upgradeDetails: (() { final guardedValue = map['upgradeDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UpgradeDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

