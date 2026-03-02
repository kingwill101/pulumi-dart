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
      backupStorageVersion: (map['backupStorageVersion'] as String).input(),
      bcdrSecurityLevel: (map['bcdrSecurityLevel'] as String).input(),
      encryption: map['encryption'] == null ? null : (VaultPropertiesResponseEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())).input(),
      monitoringSettings: map['monitoringSettings'] == null ? null : (MonitoringSettingsResponse.fromMap((map['monitoringSettings'] as Map).cast<String, dynamic>())).input(),
      moveDetails: map['moveDetails'] == null ? null : (VaultPropertiesResponseMoveDetails.fromMap((map['moveDetails'] as Map).cast<String, dynamic>())).input(),
      moveState: (map['moveState'] as String).input(),
      privateEndpointConnections: (pulumi.Input.decodeList<PrivateEndpointConnectionVaultPropertiesResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionVaultPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateEndpointStateForBackup: (map['privateEndpointStateForBackup'] as String).input(),
      privateEndpointStateForSiteRecovery: (map['privateEndpointStateForSiteRecovery'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      redundancySettings: map['redundancySettings'] == null ? null : (VaultPropertiesResponseRedundancySettings.fromMap((map['redundancySettings'] as Map).cast<String, dynamic>())).input(),
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : ((map['resourceGuardOperationRequests'] as List).cast<String>()).input(),
      restoreSettings: map['restoreSettings'] == null ? null : (RestoreSettingsResponse.fromMap((map['restoreSettings'] as Map).cast<String, dynamic>())).input(),
      secureScore: (map['secureScore'] as String).input(),
      securitySettings: map['securitySettings'] == null ? null : (SecuritySettingsResponse.fromMap((map['securitySettings'] as Map).cast<String, dynamic>())).input(),
      upgradeDetails: map['upgradeDetails'] == null ? null : (UpgradeDetailsResponse.fromMap((map['upgradeDetails'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

