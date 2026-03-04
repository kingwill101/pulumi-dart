// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_settings.dart';
import 'auto_backup_settings.dart';
import 'auto_patching_settings.dart';
import 'key_vault_credential_settings.dart';
import 'resource_identity.dart';
import 'server_configurations_management_settings.dart';
import 'storage_configuration_settings.dart';
import 'virtual_machine_identity.dart';
import 'wsfc_domain_credentials.dart';

/// {@template pulumi_sqlvirtualmachine_sql_virtual_machine_args_doc}
/// The set of arguments for SqlVirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_sqlvirtualmachine_sql_virtual_machine_args_doc}
class SqlVirtualMachineArgs {
  /// SQL best practices Assessment Settings.
  final pulumi.Input<AssessmentSettings>? assessmentSettings;

  /// Auto backup settings for SQL Server.
  final pulumi.Input<AutoBackupSettings>? autoBackupSettings;

  /// Auto patching settings for applying critical security updates to SQL virtual machine.
  final pulumi.Input<AutoPatchingSettings>? autoPatchingSettings;

  /// Enable automatic upgrade of Sql IaaS extension Agent.
  final pulumi.Input<bool>? enableAutomaticUpgrade;

  /// DO NOT USE. This value will be deprecated. Azure Active Directory identity of the server.
  final pulumi.Input<ResourceIdentity>? identity;

  /// Key vault credential settings.
  final pulumi.Input<KeyVaultCredentialSettings>? keyVaultCredentialSettings;

  /// SQL IaaS Agent least privilege mode.
  final pulumi.Input<String>? leastPrivilegeMode;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// SQL Server configuration management settings.
  final pulumi.Input<ServerConfigurationsManagementSettings>?
  serverConfigurationsManagementSettings;

  /// SQL image offer. Examples include SQL2016-WS2016, SQL2017-WS2016.
  final pulumi.Input<String>? sqlImageOffer;

  /// SQL Server edition type.
  final pulumi.Input<String>? sqlImageSku;

  /// SQL Server Management type. NOTE: This parameter is not used anymore. API will automatically detect the Sql Management, refrain from using it.
  final pulumi.Input<String>? sqlManagement;

  /// SQL Server license type.
  final pulumi.Input<String>? sqlServerLicenseType;

  /// ARM resource id of the SQL virtual machine group this SQL virtual machine is or will be part of.
  final pulumi.Input<String>? sqlVirtualMachineGroupResourceId;

  /// Name of the SQL virtual machine.
  final pulumi.Input<String>? sqlVirtualMachineName;

  /// Storage Configuration Settings.
  final pulumi.Input<StorageConfigurationSettings>?
  storageConfigurationSettings;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Virtual Machine Identity details used for Sql IaaS extension configurations.
  final pulumi.Input<VirtualMachineIdentity>? virtualMachineIdentitySettings;

  /// ARM Resource id of underlying virtual machine created from SQL marketplace image.
  final pulumi.Input<String>? virtualMachineResourceId;

  /// Domain credentials for setting up Windows Server Failover Cluster for SQL availability group.
  final pulumi.Input<WsfcDomainCredentials>? wsfcDomainCredentials;

  /// Domain credentials for setting up Windows Server Failover Cluster for SQL availability group.
  final pulumi.Input<String>? wsfcStaticIp;

  /// Creates a new [SqlVirtualMachineArgs].
  /// [assessmentSettings] SQL best practices Assessment Settings.
  /// [autoBackupSettings] Auto backup settings for SQL Server.
  /// [autoPatchingSettings] Auto patching settings for applying critical security updates to SQL virtual machine.
  /// [enableAutomaticUpgrade] Enable automatic upgrade of Sql IaaS extension Agent.
  /// [identity] DO NOT USE. This value will be deprecated. Azure Active Directory identity of the server.
  /// [keyVaultCredentialSettings] Key vault credential settings.
  /// [leastPrivilegeMode] SQL IaaS Agent least privilege mode.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverConfigurationsManagementSettings] SQL Server configuration management settings.
  /// [sqlImageOffer] SQL image offer. Examples include SQL2016-WS2016, SQL2017-WS2016.
  /// [sqlImageSku] SQL Server edition type.
  /// [sqlManagement] SQL Server Management type. NOTE: This parameter is not used anymore. API will automatically detect the Sql Management, refrain from using it.
  /// [sqlServerLicenseType] SQL Server license type.
  /// [sqlVirtualMachineGroupResourceId] ARM resource id of the SQL virtual machine group this SQL virtual machine is or will be part of.
  /// [sqlVirtualMachineName] Name of the SQL virtual machine.
  /// [storageConfigurationSettings] Storage Configuration Settings.
  /// [tags] Resource tags.
  /// [virtualMachineIdentitySettings] Virtual Machine Identity details used for Sql IaaS extension configurations.
  /// [virtualMachineResourceId] ARM Resource id of underlying virtual machine created from SQL marketplace image.
  /// [wsfcDomainCredentials] Domain credentials for setting up Windows Server Failover Cluster for SQL availability group.
  /// [wsfcStaticIp] Domain credentials for setting up Windows Server Failover Cluster for SQL availability group.
  SqlVirtualMachineArgs({
    this.assessmentSettings,
    this.autoBackupSettings,
    this.autoPatchingSettings,
    this.enableAutomaticUpgrade,
    this.identity,
    this.keyVaultCredentialSettings,
    this.leastPrivilegeMode,
    this.location,
    required this.resourceGroupName,
    this.serverConfigurationsManagementSettings,
    this.sqlImageOffer,
    this.sqlImageSku,
    this.sqlManagement,
    this.sqlServerLicenseType,
    this.sqlVirtualMachineGroupResourceId,
    this.sqlVirtualMachineName,
    this.storageConfigurationSettings,
    this.tags,
    this.virtualMachineIdentitySettings,
    this.virtualMachineResourceId,
    this.wsfcDomainCredentials,
    this.wsfcStaticIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentSettings':
          ?pulumi.Input.mapOptionalInputValue<
            AssessmentSettings,
            Map<String, dynamic>
          >(assessmentSettings, (value) => value.toMap()),
      'autoBackupSettings':
          ?pulumi.Input.mapOptionalInputValue<
            AutoBackupSettings,
            Map<String, dynamic>
          >(autoBackupSettings, (value) => value.toMap()),
      'autoPatchingSettings':
          ?pulumi.Input.mapOptionalInputValue<
            AutoPatchingSettings,
            Map<String, dynamic>
          >(autoPatchingSettings, (value) => value.toMap()),
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'keyVaultCredentialSettings':
          ?pulumi.Input.mapOptionalInputValue<
            KeyVaultCredentialSettings,
            Map<String, dynamic>
          >(keyVaultCredentialSettings, (value) => value.toMap()),
      'leastPrivilegeMode': ?leastPrivilegeMode,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'serverConfigurationsManagementSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ServerConfigurationsManagementSettings,
            Map<String, dynamic>
          >(serverConfigurationsManagementSettings, (value) => value.toMap()),
      'sqlImageOffer': ?sqlImageOffer,
      'sqlImageSku': ?sqlImageSku,
      'sqlManagement': ?sqlManagement,
      'sqlServerLicenseType': ?sqlServerLicenseType,
      'sqlVirtualMachineGroupResourceId': ?sqlVirtualMachineGroupResourceId,
      'sqlVirtualMachineName': ?sqlVirtualMachineName,
      'storageConfigurationSettings':
          ?pulumi.Input.mapOptionalInputValue<
            StorageConfigurationSettings,
            Map<String, dynamic>
          >(storageConfigurationSettings, (value) => value.toMap()),
      'tags': ?tags,
      'virtualMachineIdentitySettings':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachineIdentity,
            Map<String, dynamic>
          >(virtualMachineIdentitySettings, (value) => value.toMap()),
      'virtualMachineResourceId': ?virtualMachineResourceId,
      'wsfcDomainCredentials':
          ?pulumi.Input.mapOptionalInputValue<
            WsfcDomainCredentials,
            Map<String, dynamic>
          >(wsfcDomainCredentials, (value) => value.toMap()),
      'wsfcStaticIp': ?wsfcStaticIp,
    };
  }

  factory SqlVirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return SqlVirtualMachineArgs(
      assessmentSettings: (() {
        final guardedValue = map['assessmentSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AssessmentSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      autoBackupSettings: (() {
        final guardedValue = map['autoBackupSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AutoBackupSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      autoPatchingSettings: (() {
        final guardedValue = map['autoPatchingSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AutoPatchingSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      enableAutomaticUpgrade: (() {
        final guardedValue = map['enableAutomaticUpgrade'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      keyVaultCredentialSettings: (() {
        final guardedValue = map['keyVaultCredentialSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KeyVaultCredentialSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      leastPrivilegeMode: (() {
        final guardedValue = map['leastPrivilegeMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serverConfigurationsManagementSettings: (() {
        final guardedValue = map['serverConfigurationsManagementSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServerConfigurationsManagementSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sqlImageOffer: (() {
        final guardedValue = map['sqlImageOffer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sqlImageSku: (() {
        final guardedValue = map['sqlImageSku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sqlManagement: (() {
        final guardedValue = map['sqlManagement'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sqlServerLicenseType: (() {
        final guardedValue = map['sqlServerLicenseType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sqlVirtualMachineGroupResourceId: (() {
        final guardedValue = map['sqlVirtualMachineGroupResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sqlVirtualMachineName: (() {
        final guardedValue = map['sqlVirtualMachineName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageConfigurationSettings: (() {
        final guardedValue = map['storageConfigurationSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StorageConfigurationSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      virtualMachineIdentitySettings: (() {
        final guardedValue = map['virtualMachineIdentitySettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachineIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      virtualMachineResourceId: (() {
        final guardedValue = map['virtualMachineResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      wsfcDomainCredentials: (() {
        final guardedValue = map['wsfcDomainCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WsfcDomainCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      wsfcStaticIp: (() {
        final guardedValue = map['wsfcStaticIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
