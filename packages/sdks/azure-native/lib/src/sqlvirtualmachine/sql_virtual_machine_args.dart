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
  final pulumi.Input<ServerConfigurationsManagementSettings>? serverConfigurationsManagementSettings;
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
  final pulumi.Input<StorageConfigurationSettings>? storageConfigurationSettings;
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
    pulumi.Output<AssessmentSettings>? assessmentSettings,
    pulumi.Output<AutoBackupSettings>? autoBackupSettings,
    pulumi.Output<AutoPatchingSettings>? autoPatchingSettings,
    pulumi.Output<bool>? enableAutomaticUpgrade,
    pulumi.Output<ResourceIdentity>? identity,
    pulumi.Output<KeyVaultCredentialSettings>? keyVaultCredentialSettings,
    pulumi.Output<String>? leastPrivilegeMode,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<ServerConfigurationsManagementSettings>? serverConfigurationsManagementSettings,
    pulumi.Output<String>? sqlImageOffer,
    pulumi.Output<String>? sqlImageSku,
    pulumi.Output<String>? sqlManagement,
    pulumi.Output<String>? sqlServerLicenseType,
    pulumi.Output<String>? sqlVirtualMachineGroupResourceId,
    pulumi.Output<String>? sqlVirtualMachineName,
    pulumi.Output<StorageConfigurationSettings>? storageConfigurationSettings,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<VirtualMachineIdentity>? virtualMachineIdentitySettings,
    pulumi.Output<String>? virtualMachineResourceId,
    pulumi.Output<WsfcDomainCredentials>? wsfcDomainCredentials,
    pulumi.Output<String>? wsfcStaticIp,
  }) :
      assessmentSettings = pulumi.Input.asOptionalInput<AssessmentSettings>(assessmentSettings),
      autoBackupSettings = pulumi.Input.asOptionalInput<AutoBackupSettings>(autoBackupSettings),
      autoPatchingSettings = pulumi.Input.asOptionalInput<AutoPatchingSettings>(autoPatchingSettings),
      enableAutomaticUpgrade = pulumi.Input.asOptionalInput<bool>(enableAutomaticUpgrade),
      identity = pulumi.Input.asOptionalInput<ResourceIdentity>(identity),
      keyVaultCredentialSettings = pulumi.Input.asOptionalInput<KeyVaultCredentialSettings>(keyVaultCredentialSettings),
      leastPrivilegeMode = pulumi.Input.asOptionalInput<String>(leastPrivilegeMode),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverConfigurationsManagementSettings = pulumi.Input.asOptionalInput<ServerConfigurationsManagementSettings>(serverConfigurationsManagementSettings),
      sqlImageOffer = pulumi.Input.asOptionalInput<String>(sqlImageOffer),
      sqlImageSku = pulumi.Input.asOptionalInput<String>(sqlImageSku),
      sqlManagement = pulumi.Input.asOptionalInput<String>(sqlManagement),
      sqlServerLicenseType = pulumi.Input.asOptionalInput<String>(sqlServerLicenseType),
      sqlVirtualMachineGroupResourceId = pulumi.Input.asOptionalInput<String>(sqlVirtualMachineGroupResourceId),
      sqlVirtualMachineName = pulumi.Input.asOptionalInput<String>(sqlVirtualMachineName),
      storageConfigurationSettings = pulumi.Input.asOptionalInput<StorageConfigurationSettings>(storageConfigurationSettings),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualMachineIdentitySettings = pulumi.Input.asOptionalInput<VirtualMachineIdentity>(virtualMachineIdentitySettings),
      virtualMachineResourceId = pulumi.Input.asOptionalInput<String>(virtualMachineResourceId),
      wsfcDomainCredentials = pulumi.Input.asOptionalInput<WsfcDomainCredentials>(wsfcDomainCredentials),
      wsfcStaticIp = pulumi.Input.asOptionalInput<String>(wsfcStaticIp);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentSettings': ?pulumi.Input.mapOptionalInputValue<AssessmentSettings, Map<String, dynamic>>(assessmentSettings, (value) => value.toMap()),
      'autoBackupSettings': ?pulumi.Input.mapOptionalInputValue<AutoBackupSettings, Map<String, dynamic>>(autoBackupSettings, (value) => value.toMap()),
      'autoPatchingSettings': ?pulumi.Input.mapOptionalInputValue<AutoPatchingSettings, Map<String, dynamic>>(autoPatchingSettings, (value) => value.toMap()),
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'identity': ?pulumi.Input.mapOptionalInputValue<ResourceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultCredentialSettings': ?pulumi.Input.mapOptionalInputValue<KeyVaultCredentialSettings, Map<String, dynamic>>(keyVaultCredentialSettings, (value) => value.toMap()),
      'leastPrivilegeMode': ?leastPrivilegeMode,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'serverConfigurationsManagementSettings': ?pulumi.Input.mapOptionalInputValue<ServerConfigurationsManagementSettings, Map<String, dynamic>>(serverConfigurationsManagementSettings, (value) => value.toMap()),
      'sqlImageOffer': ?sqlImageOffer,
      'sqlImageSku': ?sqlImageSku,
      'sqlManagement': ?sqlManagement,
      'sqlServerLicenseType': ?sqlServerLicenseType,
      'sqlVirtualMachineGroupResourceId': ?sqlVirtualMachineGroupResourceId,
      'sqlVirtualMachineName': ?sqlVirtualMachineName,
      'storageConfigurationSettings': ?pulumi.Input.mapOptionalInputValue<StorageConfigurationSettings, Map<String, dynamic>>(storageConfigurationSettings, (value) => value.toMap()),
      'tags': ?tags,
      'virtualMachineIdentitySettings': ?pulumi.Input.mapOptionalInputValue<VirtualMachineIdentity, Map<String, dynamic>>(virtualMachineIdentitySettings, (value) => value.toMap()),
      'virtualMachineResourceId': ?virtualMachineResourceId,
      'wsfcDomainCredentials': ?pulumi.Input.mapOptionalInputValue<WsfcDomainCredentials, Map<String, dynamic>>(wsfcDomainCredentials, (value) => value.toMap()),
      'wsfcStaticIp': ?wsfcStaticIp,
    };
  }

  factory SqlVirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return SqlVirtualMachineArgs(
      assessmentSettings: map['assessmentSettings'] == null ? null : pulumi.Output.create<AssessmentSettings>(AssessmentSettings.fromMap((map['assessmentSettings'] as Map).cast<String, dynamic>())),
      autoBackupSettings: map['autoBackupSettings'] == null ? null : pulumi.Output.create<AutoBackupSettings>(AutoBackupSettings.fromMap((map['autoBackupSettings'] as Map).cast<String, dynamic>())),
      autoPatchingSettings: map['autoPatchingSettings'] == null ? null : pulumi.Output.create<AutoPatchingSettings>(AutoPatchingSettings.fromMap((map['autoPatchingSettings'] as Map).cast<String, dynamic>())),
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : pulumi.Output.create<bool>(map['enableAutomaticUpgrade'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<ResourceIdentity>(ResourceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      keyVaultCredentialSettings: map['keyVaultCredentialSettings'] == null ? null : pulumi.Output.create<KeyVaultCredentialSettings>(KeyVaultCredentialSettings.fromMap((map['keyVaultCredentialSettings'] as Map).cast<String, dynamic>())),
      leastPrivilegeMode: map['leastPrivilegeMode'] == null ? null : pulumi.Output.create<String>(map['leastPrivilegeMode'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverConfigurationsManagementSettings: map['serverConfigurationsManagementSettings'] == null ? null : pulumi.Output.create<ServerConfigurationsManagementSettings>(ServerConfigurationsManagementSettings.fromMap((map['serverConfigurationsManagementSettings'] as Map).cast<String, dynamic>())),
      sqlImageOffer: map['sqlImageOffer'] == null ? null : pulumi.Output.create<String>(map['sqlImageOffer'] as String),
      sqlImageSku: map['sqlImageSku'] == null ? null : pulumi.Output.create<String>(map['sqlImageSku'] as String),
      sqlManagement: map['sqlManagement'] == null ? null : pulumi.Output.create<String>(map['sqlManagement'] as String),
      sqlServerLicenseType: map['sqlServerLicenseType'] == null ? null : pulumi.Output.create<String>(map['sqlServerLicenseType'] as String),
      sqlVirtualMachineGroupResourceId: map['sqlVirtualMachineGroupResourceId'] == null ? null : pulumi.Output.create<String>(map['sqlVirtualMachineGroupResourceId'] as String),
      sqlVirtualMachineName: map['sqlVirtualMachineName'] == null ? null : pulumi.Output.create<String>(map['sqlVirtualMachineName'] as String),
      storageConfigurationSettings: map['storageConfigurationSettings'] == null ? null : pulumi.Output.create<StorageConfigurationSettings>(StorageConfigurationSettings.fromMap((map['storageConfigurationSettings'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualMachineIdentitySettings: map['virtualMachineIdentitySettings'] == null ? null : pulumi.Output.create<VirtualMachineIdentity>(VirtualMachineIdentity.fromMap((map['virtualMachineIdentitySettings'] as Map).cast<String, dynamic>())),
      virtualMachineResourceId: map['virtualMachineResourceId'] == null ? null : pulumi.Output.create<String>(map['virtualMachineResourceId'] as String),
      wsfcDomainCredentials: map['wsfcDomainCredentials'] == null ? null : pulumi.Output.create<WsfcDomainCredentials>(WsfcDomainCredentials.fromMap((map['wsfcDomainCredentials'] as Map).cast<String, dynamic>())),
      wsfcStaticIp: map['wsfcStaticIp'] == null ? null : pulumi.Output.create<String>(map['wsfcStaticIp'] as String),
    );
  }
}

