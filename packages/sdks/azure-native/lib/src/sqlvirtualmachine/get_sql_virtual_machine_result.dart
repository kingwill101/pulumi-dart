// ignore_for_file: unused_element, unnecessary_cast

import 'assessment_settings_response.dart';
import 'auto_backup_settings_response.dart';
import 'auto_patching_settings_response.dart';
import 'key_vault_credential_settings_response.dart';
import 'resource_identity_response.dart';
import 'server_configurations_management_settings_response.dart';
import 'storage_configuration_settings_response.dart';
import 'system_data_response.dart';
import 'troubleshooting_status_response.dart';
import 'virtual_machine_identity_response.dart';
import 'wsfc_domain_credentials_response.dart';

/// Result data returned by getSqlVirtualMachine.
class GetSqlVirtualMachineResult {
  /// Additional VM Patching solution enabled on the Virtual Machine
  final String additionalVmPatch;
  /// SQL best practices Assessment Settings.
  final AssessmentSettingsResponse? assessmentSettings;
  /// Auto backup settings for SQL Server.
  final AutoBackupSettingsResponse? autoBackupSettings;
  /// Auto patching settings for applying critical security updates to SQL virtual machine.
  final AutoPatchingSettingsResponse? autoPatchingSettings;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Enable automatic upgrade of Sql IaaS extension Agent.
  final bool? enableAutomaticUpgrade;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// DO NOT USE. This value will be deprecated. Azure Active Directory identity of the server.
  final ResourceIdentityResponse? identity;
  /// Key vault credential settings.
  final KeyVaultCredentialSettingsResponse? keyVaultCredentialSettings;
  /// SQL IaaS Agent least privilege mode.
  final String? leastPrivilegeMode;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Operating System of the current SQL Virtual Machine.
  final String osType;
  /// Provisioning state to track the async operation status.
  final String provisioningState;
  /// SQL Server configuration management settings.
  final ServerConfigurationsManagementSettingsResponse? serverConfigurationsManagementSettings;
  /// SQL image offer. Examples include SQL2016-WS2016, SQL2017-WS2016.
  final String? sqlImageOffer;
  /// SQL Server edition type.
  final String? sqlImageSku;
  /// SQL Server Management type. NOTE: This parameter is not used anymore. API will automatically detect the Sql Management, refrain from using it.
  final String? sqlManagement;
  /// SQL Server license type.
  final String? sqlServerLicenseType;
  /// ARM resource id of the SQL virtual machine group this SQL virtual machine is or will be part of.
  final String? sqlVirtualMachineGroupResourceId;
  /// Storage Configuration Settings.
  final StorageConfigurationSettingsResponse? storageConfigurationSettings;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Troubleshooting status
  final TroubleshootingStatusResponse troubleshootingStatus;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Virtual Machine Identity details used for Sql IaaS extension configurations.
  final VirtualMachineIdentityResponse? virtualMachineIdentitySettings;
  /// ARM Resource id of underlying virtual machine created from SQL marketplace image.
  final String? virtualMachineResourceId;
  /// Domain credentials for setting up Windows Server Failover Cluster for SQL availability group.
  final WsfcDomainCredentialsResponse? wsfcDomainCredentials;
  /// Domain credentials for setting up Windows Server Failover Cluster for SQL availability group.
  final String? wsfcStaticIp;

  /// Creates a new [GetSqlVirtualMachineResult].
  /// [additionalVmPatch] Additional VM Patching solution enabled on the Virtual Machine
  /// [assessmentSettings] SQL best practices Assessment Settings.
  /// [autoBackupSettings] Auto backup settings for SQL Server.
  /// [autoPatchingSettings] Auto patching settings for applying critical security updates to SQL virtual machine.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [enableAutomaticUpgrade] Enable automatic upgrade of Sql IaaS extension Agent.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] DO NOT USE. This value will be deprecated. Azure Active Directory identity of the server.
  /// [keyVaultCredentialSettings] Key vault credential settings.
  /// [leastPrivilegeMode] SQL IaaS Agent least privilege mode.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [osType] Operating System of the current SQL Virtual Machine.
  /// [provisioningState] Provisioning state to track the async operation status.
  /// [serverConfigurationsManagementSettings] SQL Server configuration management settings.
  /// [sqlImageOffer] SQL image offer. Examples include SQL2016-WS2016, SQL2017-WS2016.
  /// [sqlImageSku] SQL Server edition type.
  /// [sqlManagement] SQL Server Management type. NOTE: This parameter is not used anymore. API will automatically detect the Sql Management, refrain from using it.
  /// [sqlServerLicenseType] SQL Server license type.
  /// [sqlVirtualMachineGroupResourceId] ARM resource id of the SQL virtual machine group this SQL virtual machine is or will be part of.
  /// [storageConfigurationSettings] Storage Configuration Settings.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [troubleshootingStatus] Troubleshooting status
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualMachineIdentitySettings] Virtual Machine Identity details used for Sql IaaS extension configurations.
  /// [virtualMachineResourceId] ARM Resource id of underlying virtual machine created from SQL marketplace image.
  /// [wsfcDomainCredentials] Domain credentials for setting up Windows Server Failover Cluster for SQL availability group.
  /// [wsfcStaticIp] Domain credentials for setting up Windows Server Failover Cluster for SQL availability group.
  GetSqlVirtualMachineResult({
    required this.additionalVmPatch,
    this.assessmentSettings,
    this.autoBackupSettings,
    this.autoPatchingSettings,
    required this.azureApiVersion,
    this.enableAutomaticUpgrade,
    required this.id,
    this.identity,
    this.keyVaultCredentialSettings,
    this.leastPrivilegeMode,
    required this.location,
    required this.name,
    required this.osType,
    required this.provisioningState,
    this.serverConfigurationsManagementSettings,
    this.sqlImageOffer,
    this.sqlImageSku,
    this.sqlManagement,
    this.sqlServerLicenseType,
    this.sqlVirtualMachineGroupResourceId,
    this.storageConfigurationSettings,
    required this.systemData,
    this.tags,
    required this.troubleshootingStatus,
    required this.type,
    this.virtualMachineIdentitySettings,
    this.virtualMachineResourceId,
    this.wsfcDomainCredentials,
    this.wsfcStaticIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVmPatch': additionalVmPatch,
      'assessmentSettings': ?assessmentSettings == null ? null : assessmentSettings!.toMap(),
      'autoBackupSettings': ?autoBackupSettings == null ? null : autoBackupSettings!.toMap(),
      'autoPatchingSettings': ?autoPatchingSettings == null ? null : autoPatchingSettings!.toMap(),
      'azureApiVersion': azureApiVersion,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'keyVaultCredentialSettings': ?keyVaultCredentialSettings == null ? null : keyVaultCredentialSettings!.toMap(),
      'leastPrivilegeMode': ?leastPrivilegeMode,
      'location': location,
      'name': name,
      'osType': osType,
      'provisioningState': provisioningState,
      'serverConfigurationsManagementSettings': ?serverConfigurationsManagementSettings == null ? null : serverConfigurationsManagementSettings!.toMap(),
      'sqlImageOffer': ?sqlImageOffer,
      'sqlImageSku': ?sqlImageSku,
      'sqlManagement': ?sqlManagement,
      'sqlServerLicenseType': ?sqlServerLicenseType,
      'sqlVirtualMachineGroupResourceId': ?sqlVirtualMachineGroupResourceId,
      'storageConfigurationSettings': ?storageConfigurationSettings == null ? null : storageConfigurationSettings!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'troubleshootingStatus': troubleshootingStatus.toMap(),
      'type': type,
      'virtualMachineIdentitySettings': ?virtualMachineIdentitySettings == null ? null : virtualMachineIdentitySettings!.toMap(),
      'virtualMachineResourceId': ?virtualMachineResourceId,
      'wsfcDomainCredentials': ?wsfcDomainCredentials == null ? null : wsfcDomainCredentials!.toMap(),
      'wsfcStaticIp': ?wsfcStaticIp,
    };
  }

  factory GetSqlVirtualMachineResult.fromMap(Map<String, dynamic> map) {
    return GetSqlVirtualMachineResult(
      additionalVmPatch: map['additionalVmPatch'] as String,
      assessmentSettings: map['assessmentSettings'] == null ? null : AssessmentSettingsResponse.fromMap((map['assessmentSettings']! as Map).cast<String, dynamic>()),
      autoBackupSettings: map['autoBackupSettings'] == null ? null : AutoBackupSettingsResponse.fromMap((map['autoBackupSettings']! as Map).cast<String, dynamic>()),
      autoPatchingSettings: map['autoPatchingSettings'] == null ? null : AutoPatchingSettingsResponse.fromMap((map['autoPatchingSettings']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : map['enableAutomaticUpgrade']! as bool,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ResourceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      keyVaultCredentialSettings: map['keyVaultCredentialSettings'] == null ? null : KeyVaultCredentialSettingsResponse.fromMap((map['keyVaultCredentialSettings']! as Map).cast<String, dynamic>()),
      leastPrivilegeMode: map['leastPrivilegeMode'] == null ? null : map['leastPrivilegeMode']! as String,
      location: map['location'] as String,
      name: map['name'] as String,
      osType: map['osType'] as String,
      provisioningState: map['provisioningState'] as String,
      serverConfigurationsManagementSettings: map['serverConfigurationsManagementSettings'] == null ? null : ServerConfigurationsManagementSettingsResponse.fromMap((map['serverConfigurationsManagementSettings']! as Map).cast<String, dynamic>()),
      sqlImageOffer: map['sqlImageOffer'] == null ? null : map['sqlImageOffer']! as String,
      sqlImageSku: map['sqlImageSku'] == null ? null : map['sqlImageSku']! as String,
      sqlManagement: map['sqlManagement'] == null ? null : map['sqlManagement']! as String,
      sqlServerLicenseType: map['sqlServerLicenseType'] == null ? null : map['sqlServerLicenseType']! as String,
      sqlVirtualMachineGroupResourceId: map['sqlVirtualMachineGroupResourceId'] == null ? null : map['sqlVirtualMachineGroupResourceId']! as String,
      storageConfigurationSettings: map['storageConfigurationSettings'] == null ? null : StorageConfigurationSettingsResponse.fromMap((map['storageConfigurationSettings']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      troubleshootingStatus: TroubleshootingStatusResponse.fromMap((map['troubleshootingStatus'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      virtualMachineIdentitySettings: map['virtualMachineIdentitySettings'] == null ? null : VirtualMachineIdentityResponse.fromMap((map['virtualMachineIdentitySettings']! as Map).cast<String, dynamic>()),
      virtualMachineResourceId: map['virtualMachineResourceId'] == null ? null : map['virtualMachineResourceId']! as String,
      wsfcDomainCredentials: map['wsfcDomainCredentials'] == null ? null : WsfcDomainCredentialsResponse.fromMap((map['wsfcDomainCredentials']! as Map).cast<String, dynamic>()),
      wsfcStaticIp: map['wsfcStaticIp'] == null ? null : map['wsfcStaticIp']! as String,
    );
  }
}

