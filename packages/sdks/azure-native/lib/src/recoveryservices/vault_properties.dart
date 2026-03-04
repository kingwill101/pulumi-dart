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
      'encryption':
          ?pulumi.Input.mapOptionalInputValue<
            VaultPropertiesEncryption,
            Map<String, dynamic>
          >(encryption, (value) => value.toMap()),
      'monitoringSettings':
          ?pulumi.Input.mapOptionalInputValue<
            MonitoringSettings,
            Map<String, dynamic>
          >(monitoringSettings, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'redundancySettings':
          ?pulumi.Input.mapOptionalInputValue<
            VaultPropertiesRedundancySettings,
            Map<String, dynamic>
          >(redundancySettings, (value) => value.toMap()),
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'restoreSettings':
          ?pulumi.Input.mapOptionalInputValue<
            RestoreSettings,
            Map<String, dynamic>
          >(restoreSettings, (value) => value.toMap()),
      'securitySettings':
          ?pulumi.Input.mapOptionalInputValue<
            SecuritySettings,
            Map<String, dynamic>
          >(securitySettings, (value) => value.toMap()),
    };
  }

  factory VaultProperties.fromMap(Map<String, dynamic> map) {
    return VaultProperties(
      encryption: (() {
        final guardedValue = map['encryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VaultPropertiesEncryption.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      monitoringSettings: (() {
        final guardedValue = map['monitoringSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MonitoringSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      publicNetworkAccess: (() {
        final guardedValue = map['publicNetworkAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      redundancySettings: (() {
        final guardedValue = map['redundancySettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VaultPropertiesRedundancySettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGuardOperationRequests: (() {
        final guardedValue = map['resourceGuardOperationRequests'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      restoreSettings: (() {
        final guardedValue = map['restoreSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RestoreSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      securitySettings: (() {
        final guardedValue = map['securitySettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecuritySettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
