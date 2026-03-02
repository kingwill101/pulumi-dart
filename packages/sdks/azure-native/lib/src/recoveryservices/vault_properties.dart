// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_settings.dart';
import 'restore_settings.dart';
import 'security_settings.dart';
import 'vault_properties_encryption.dart';
import 'vault_properties_redundancy_settings.dart';

/// Properties of the vault.
class VaultProperties {
  /// Customer Managed Key details of the resource.
  final pulumi.Input<VaultPropertiesEncryption>? encryption;
  /// Monitoring Settings of the vault
  final pulumi.Input<MonitoringSettings>? monitoringSettings;
  /// property to enable or disable resource provider inbound network traffic from public clients
  final pulumi.Input<String>? publicNetworkAccess;
  /// The redundancy Settings of a Vault
  final pulumi.Input<VaultPropertiesRedundancySettings>? redundancySettings;
  /// ResourceGuardOperationRequests on which LAC check will be performed
  final pulumi.Input<List<String>>? resourceGuardOperationRequests;
  /// Restore Settings of the vault
  final pulumi.Input<RestoreSettings>? restoreSettings;
  /// Security Settings of the vault
  final pulumi.Input<SecuritySettings>? securitySettings;

  /// Creates a new [VaultProperties].
  /// [encryption] Customer Managed Key details of the resource.
  /// [monitoringSettings] Monitoring Settings of the vault
  /// [publicNetworkAccess] property to enable or disable resource provider inbound network traffic from public clients
  /// [redundancySettings] The redundancy Settings of a Vault
  /// [resourceGuardOperationRequests] ResourceGuardOperationRequests on which LAC check will be performed
  /// [restoreSettings] Restore Settings of the vault
  /// [securitySettings] Security Settings of the vault
  VaultProperties({
    this.encryption,
    this.monitoringSettings,
    this.publicNetworkAccess,
    this.redundancySettings,
    this.resourceGuardOperationRequests,
    this.restoreSettings,
    this.securitySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?pulumi.Input.mapOptionalInputValue<VaultPropertiesEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'monitoringSettings': ?pulumi.Input.mapOptionalInputValue<MonitoringSettings, Map<String, dynamic>>(monitoringSettings, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'redundancySettings': ?pulumi.Input.mapOptionalInputValue<VaultPropertiesRedundancySettings, Map<String, dynamic>>(redundancySettings, (value) => value.toMap()),
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'restoreSettings': ?pulumi.Input.mapOptionalInputValue<RestoreSettings, Map<String, dynamic>>(restoreSettings, (value) => value.toMap()),
      'securitySettings': ?pulumi.Input.mapOptionalInputValue<SecuritySettings, Map<String, dynamic>>(securitySettings, (value) => value.toMap()),
    };
  }

  factory VaultProperties.fromMap(Map<String, dynamic> map) {
    return VaultProperties(
      encryption: map['encryption'] == null ? null : (VaultPropertiesEncryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      monitoringSettings: map['monitoringSettings'] == null ? null : (MonitoringSettings.fromMap((map['monitoringSettings']! as Map).cast<String, dynamic>())).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      redundancySettings: map['redundancySettings'] == null ? null : (VaultPropertiesRedundancySettings.fromMap((map['redundancySettings']! as Map).cast<String, dynamic>())).input(),
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : ((map['resourceGuardOperationRequests']! as List).cast<String>()).input(),
      restoreSettings: map['restoreSettings'] == null ? null : (RestoreSettings.fromMap((map['restoreSettings']! as Map).cast<String, dynamic>())).input(),
      securitySettings: map['securitySettings'] == null ? null : (SecuritySettings.fromMap((map['securitySettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

