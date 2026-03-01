// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_external_administrator.dart';
import 'resource_identity.dart';
import 'service_principal.dart';
import 'sku.dart';

/// {@template pulumi_sql_managed_instance_args_doc}
/// The set of arguments for ManagedInstance.
/// {@endtemplate}
/// {@macro pulumi_sql_managed_instance_args_doc}
class ManagedInstanceArgs {
  /// Administrator username for the managed instance. Can only be specified when the managed instance is being created (and is required for creation).
  final pulumi.Input<String>? administratorLogin;
  /// The administrator login password (required for managed instance creation).
  final pulumi.Input<String>? administratorLoginPassword;
  /// The Azure Active Directory administrator of the instance. This can only be used at instance create time. If used for instance update, it will be ignored or it will result in an error. For updates individual APIs will need to be used.
  final pulumi.Input<ManagedInstanceExternalAdministrator>? administrators;
  /// The managed instance's authentication metadata lookup mode.
  final pulumi.Input<String>? authenticationMetadata;
  /// Collation of the managed instance.
  final pulumi.Input<String>? collation;
  /// Specifies the internal format of instance databases specific to the SQL engine version.
  final pulumi.Input<String>? databaseFormat;
  /// The resource id of another managed instance whose DNS zone this managed instance will share after creation.
  final pulumi.Input<String>? dnsZonePartner;
  /// Hybrid secondary usage. Possible values are 'Active' (default value) and 'Passive' (customer uses the secondary as Passive DR).
  final pulumi.Input<String>? hybridSecondaryUsage;
  /// The Azure Active Directory identity of the managed instance.
  final pulumi.Input<ResourceIdentity>? identity;
  /// The Id of the instance pool this managed server belongs to.
  final pulumi.Input<String>? instancePoolId;
  /// Whether or not this is a GPv2 variant of General Purpose edition.
  final pulumi.Input<bool>? isGeneralPurposeV2;
  /// A CMK URI of the key to use for encryption.
  final pulumi.Input<String>? keyId;
  /// The license type. Possible values are 'LicenseIncluded' (regular price inclusive of a new SQL license) and 'BasePrice' (discounted AHB price for bringing your own SQL licenses).
  final pulumi.Input<String>? licenseType;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Specifies maintenance configuration id to apply to this managed instance.
  final pulumi.Input<String>? maintenanceConfigurationId;
  /// Specifies the mode of database creation.
  ///
  /// Default: Regular instance creation.
  ///
  /// Restore: Creates an instance by restoring a set of backups to specific point in time. RestorePointInTime and SourceManagedInstanceId must be specified.
  final pulumi.Input<String>? managedInstanceCreateMode;
  /// The name of the managed instance.
  final pulumi.Input<String>? managedInstanceName;
  /// Minimal TLS version. Allowed values: 'None', '1.0', '1.1', '1.2'
  final pulumi.Input<String>? minimalTlsVersion;
  /// Pricing model of Managed Instance.
  final pulumi.Input<String>? pricingModel;
  /// The resource id of a user assigned identity to be used by default.
  final pulumi.Input<String>? primaryUserAssignedIdentityId;
  /// Connection type used for connecting to the instance.
  final pulumi.Input<String>? proxyOverride;
  /// Whether or not the public data endpoint is enabled.
  final pulumi.Input<bool>? publicDataEndpointEnabled;
  /// The storage account type to be used to store backups for this instance. The options are Local (LocallyRedundantStorage), Zone (ZoneRedundantStorage), Geo (GeoRedundantStorage) and GeoZone(GeoZoneRedundantStorage)
  final pulumi.Input<String>? requestedBackupStorageRedundancy;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database.
  final pulumi.Input<String>? restorePointInTime;
  /// The managed instance's service principal.
  final pulumi.Input<ServicePrincipal>? servicePrincipal;
  /// Managed instance SKU. Allowed values for sku.name: GP_Gen5, GP_G8IM, GP_G8IH, BC_Gen5, BC_G8IM, BC_G8IH
  final pulumi.Input<Sku>? sku;
  /// The resource identifier of the source managed instance associated with create operation of this instance.
  final pulumi.Input<String>? sourceManagedInstanceId;
  /// Storage IOps. Minimum value: 300. Maximum value: 80000. Increments of 1 IOps allowed only. Maximum value depends on the selected hardware family and number of vCores.
  final pulumi.Input<int>? storageIOps;
  /// Storage size in GB. Minimum value: 32. Maximum value: 16384. Increments of 32 GB allowed only. Maximum value depends on the selected hardware family and number of vCores.
  final pulumi.Input<int>? storageSizeInGB;
  /// Storage throughput MBps parameter is not supported in the instance create/update operation.
  final pulumi.Input<int>? storageThroughputMBps;
  /// Subnet resource ID for the managed instance.
  final pulumi.Input<String>? subnetId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Id of the timezone. Allowed values are timezones supported by Windows.
  /// Windows keeps details on supported timezones, including the id, in registry under
  /// KEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Time Zones.
  /// You can get those registry values via SQL Server by querying SELECT name AS timezone_id FROM sys.time_zone_info.
  /// List of Ids can also be obtained by executing [System.TimeZoneInfo]::GetSystemTimeZones() in PowerShell.
  /// An example of valid timezone id is "Pacific Standard Time" or "W. Europe Standard Time".
  final pulumi.Input<String>? timezoneId;
  /// The number of vCores. Allowed values: 8, 16, 24, 32, 40, 64, 80.
  final pulumi.Input<int>? vCores;
  /// Whether or not the multi-az is enabled.
  final pulumi.Input<bool>? zoneRedundant;

  /// Creates a new [ManagedInstanceArgs].
  /// [administratorLogin] Administrator username for the managed instance. Can only be specified when the managed instance is being created (and is required for creation).
  /// [administratorLoginPassword] The administrator login password (required for managed instance creation).
  /// [administrators] The Azure Active Directory administrator of the instance. This can only be used at instance create time. If used for instance update, it will be ignored or it will result in an error. For updates individual APIs will need to be used.
  /// [authenticationMetadata] The managed instance's authentication metadata lookup mode.
  /// [collation] Collation of the managed instance.
  /// [databaseFormat] Specifies the internal format of instance databases specific to the SQL engine version.
  /// [dnsZonePartner] The resource id of another managed instance whose DNS zone this managed instance will share after creation.
  /// [hybridSecondaryUsage] Hybrid secondary usage. Possible values are 'Active' (default value) and 'Passive' (customer uses the secondary as Passive DR).
  /// [identity] The Azure Active Directory identity of the managed instance.
  /// [instancePoolId] The Id of the instance pool this managed server belongs to.
  /// [isGeneralPurposeV2] Whether or not this is a GPv2 variant of General Purpose edition.
  /// [keyId] A CMK URI of the key to use for encryption.
  /// [licenseType] The license type. Possible values are 'LicenseIncluded' (regular price inclusive of a new SQL license) and 'BasePrice' (discounted AHB price for bringing your own SQL licenses).
  /// [location] Resource location.
  /// [maintenanceConfigurationId] Specifies maintenance configuration id to apply to this managed instance.
  /// [managedInstanceCreateMode] Specifies the mode of database creation.
  /// [managedInstanceName] The name of the managed instance.
  /// [minimalTlsVersion] Minimal TLS version. Allowed values: 'None', '1.0', '1.1', '1.2'
  /// [pricingModel] Pricing model of Managed Instance.
  /// [primaryUserAssignedIdentityId] The resource id of a user assigned identity to be used by default.
  /// [proxyOverride] Connection type used for connecting to the instance.
  /// [publicDataEndpointEnabled] Whether or not the public data endpoint is enabled.
  /// [requestedBackupStorageRedundancy] The storage account type to be used to store backups for this instance. The options are Local (LocallyRedundantStorage), Zone (ZoneRedundantStorage), Geo (GeoRedundantStorage) and GeoZone(GeoZoneRedundantStorage)
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [restorePointInTime] Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database.
  /// [servicePrincipal] The managed instance's service principal.
  /// [sku] Managed instance SKU. Allowed values for sku.name: GP_Gen5, GP_G8IM, GP_G8IH, BC_Gen5, BC_G8IM, BC_G8IH
  /// [sourceManagedInstanceId] The resource identifier of the source managed instance associated with create operation of this instance.
  /// [storageIOps] Storage IOps. Minimum value: 300. Maximum value: 80000. Increments of 1 IOps allowed only. Maximum value depends on the selected hardware family and number of vCores.
  /// [storageSizeInGB] Storage size in GB. Minimum value: 32. Maximum value: 16384. Increments of 32 GB allowed only. Maximum value depends on the selected hardware family and number of vCores.
  /// [storageThroughputMBps] Storage throughput MBps parameter is not supported in the instance create/update operation.
  /// [subnetId] Subnet resource ID for the managed instance.
  /// [tags] Resource tags.
  /// [timezoneId] Id of the timezone. Allowed values are timezones supported by Windows.
  /// [vCores] The number of vCores. Allowed values: 8, 16, 24, 32, 40, 64, 80.
  /// [zoneRedundant] Whether or not the multi-az is enabled.
  ManagedInstanceArgs({
    pulumi.Output<String>? administratorLogin,
    pulumi.Output<String>? administratorLoginPassword,
    pulumi.Output<ManagedInstanceExternalAdministrator>? administrators,
    pulumi.Output<String>? authenticationMetadata,
    pulumi.Output<String>? collation,
    pulumi.Output<String>? databaseFormat,
    pulumi.Output<String>? dnsZonePartner,
    pulumi.Output<String>? hybridSecondaryUsage,
    pulumi.Output<ResourceIdentity>? identity,
    pulumi.Output<String>? instancePoolId,
    pulumi.Output<bool>? isGeneralPurposeV2,
    pulumi.Output<String>? keyId,
    pulumi.Output<String>? licenseType,
    pulumi.Output<String>? location,
    pulumi.Output<String>? maintenanceConfigurationId,
    pulumi.Output<String>? managedInstanceCreateMode,
    pulumi.Output<String>? managedInstanceName,
    pulumi.Output<String>? minimalTlsVersion,
    pulumi.Output<String>? pricingModel,
    pulumi.Output<String>? primaryUserAssignedIdentityId,
    pulumi.Output<String>? proxyOverride,
    pulumi.Output<bool>? publicDataEndpointEnabled,
    pulumi.Output<String>? requestedBackupStorageRedundancy,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? restorePointInTime,
    pulumi.Output<ServicePrincipal>? servicePrincipal,
    pulumi.Output<Sku>? sku,
    pulumi.Output<String>? sourceManagedInstanceId,
    pulumi.Output<int>? storageIOps,
    pulumi.Output<int>? storageSizeInGB,
    pulumi.Output<int>? storageThroughputMBps,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? timezoneId,
    pulumi.Output<int>? vCores,
    pulumi.Output<bool>? zoneRedundant,
  }) :
      administratorLogin = pulumi.Input.asOptionalInput<String>(administratorLogin),
      administratorLoginPassword = pulumi.Input.asOptionalInput<String>(administratorLoginPassword),
      administrators = pulumi.Input.asOptionalInput<ManagedInstanceExternalAdministrator>(administrators),
      authenticationMetadata = pulumi.Input.asOptionalInput<String>(authenticationMetadata),
      collation = pulumi.Input.asOptionalInput<String>(collation),
      databaseFormat = pulumi.Input.asOptionalInput<String>(databaseFormat),
      dnsZonePartner = pulumi.Input.asOptionalInput<String>(dnsZonePartner),
      hybridSecondaryUsage = pulumi.Input.asOptionalInput<String>(hybridSecondaryUsage),
      identity = pulumi.Input.asOptionalInput<ResourceIdentity>(identity),
      instancePoolId = pulumi.Input.asOptionalInput<String>(instancePoolId),
      isGeneralPurposeV2 = pulumi.Input.asOptionalInput<bool>(isGeneralPurposeV2),
      keyId = pulumi.Input.asOptionalInput<String>(keyId),
      licenseType = pulumi.Input.asOptionalInput<String>(licenseType),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceConfigurationId = pulumi.Input.asOptionalInput<String>(maintenanceConfigurationId),
      managedInstanceCreateMode = pulumi.Input.asOptionalInput<String>(managedInstanceCreateMode),
      managedInstanceName = pulumi.Input.asOptionalInput<String>(managedInstanceName),
      minimalTlsVersion = pulumi.Input.asOptionalInput<String>(minimalTlsVersion),
      pricingModel = pulumi.Input.asOptionalInput<String>(pricingModel),
      primaryUserAssignedIdentityId = pulumi.Input.asOptionalInput<String>(primaryUserAssignedIdentityId),
      proxyOverride = pulumi.Input.asOptionalInput<String>(proxyOverride),
      publicDataEndpointEnabled = pulumi.Input.asOptionalInput<bool>(publicDataEndpointEnabled),
      requestedBackupStorageRedundancy = pulumi.Input.asOptionalInput<String>(requestedBackupStorageRedundancy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      restorePointInTime = pulumi.Input.asOptionalInput<String>(restorePointInTime),
      servicePrincipal = pulumi.Input.asOptionalInput<ServicePrincipal>(servicePrincipal),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      sourceManagedInstanceId = pulumi.Input.asOptionalInput<String>(sourceManagedInstanceId),
      storageIOps = pulumi.Input.asOptionalInput<int>(storageIOps),
      storageSizeInGB = pulumi.Input.asOptionalInput<int>(storageSizeInGB),
      storageThroughputMBps = pulumi.Input.asOptionalInput<int>(storageThroughputMBps),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timezoneId = pulumi.Input.asOptionalInput<String>(timezoneId),
      vCores = pulumi.Input.asOptionalInput<int>(vCores),
      zoneRedundant = pulumi.Input.asOptionalInput<bool>(zoneRedundant);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'administratorLoginPassword': ?administratorLoginPassword,
      'administrators': ?pulumi.Input.mapOptionalInputValue<ManagedInstanceExternalAdministrator, Map<String, dynamic>>(administrators, (value) => value.toMap()),
      'authenticationMetadata': ?authenticationMetadata,
      'collation': ?collation,
      'databaseFormat': ?databaseFormat,
      'dnsZonePartner': ?dnsZonePartner,
      'hybridSecondaryUsage': ?hybridSecondaryUsage,
      'identity': ?pulumi.Input.mapOptionalInputValue<ResourceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'instancePoolId': ?instancePoolId,
      'isGeneralPurposeV2': ?isGeneralPurposeV2,
      'keyId': ?keyId,
      'licenseType': ?licenseType,
      'location': ?location,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
      'managedInstanceCreateMode': ?managedInstanceCreateMode,
      'managedInstanceName': ?managedInstanceName,
      'minimalTlsVersion': ?minimalTlsVersion,
      'pricingModel': ?pricingModel,
      'primaryUserAssignedIdentityId': ?primaryUserAssignedIdentityId,
      'proxyOverride': ?proxyOverride,
      'publicDataEndpointEnabled': ?publicDataEndpointEnabled,
      'requestedBackupStorageRedundancy': ?requestedBackupStorageRedundancy,
      'resourceGroupName': resourceGroupName,
      'restorePointInTime': ?restorePointInTime,
      'servicePrincipal': ?pulumi.Input.mapOptionalInputValue<ServicePrincipal, Map<String, dynamic>>(servicePrincipal, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'sourceManagedInstanceId': ?sourceManagedInstanceId,
      'storageIOps': ?storageIOps,
      'storageSizeInGB': ?storageSizeInGB,
      'storageThroughputMBps': ?storageThroughputMBps,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'timezoneId': ?timezoneId,
      'vCores': ?vCores,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory ManagedInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceArgs(
      administratorLogin: map['administratorLogin'] == null ? null : pulumi.Output.create<String>(map['administratorLogin'] as String),
      administratorLoginPassword: map['administratorLoginPassword'] == null ? null : pulumi.Output.create<String>(map['administratorLoginPassword'] as String),
      administrators: map['administrators'] == null ? null : pulumi.Output.create<ManagedInstanceExternalAdministrator>(ManagedInstanceExternalAdministrator.fromMap((map['administrators'] as Map).cast<String, dynamic>())),
      authenticationMetadata: map['authenticationMetadata'] == null ? null : pulumi.Output.create<String>(map['authenticationMetadata'] as String),
      collation: map['collation'] == null ? null : pulumi.Output.create<String>(map['collation'] as String),
      databaseFormat: map['databaseFormat'] == null ? null : pulumi.Output.create<String>(map['databaseFormat'] as String),
      dnsZonePartner: map['dnsZonePartner'] == null ? null : pulumi.Output.create<String>(map['dnsZonePartner'] as String),
      hybridSecondaryUsage: map['hybridSecondaryUsage'] == null ? null : pulumi.Output.create<String>(map['hybridSecondaryUsage'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ResourceIdentity>(ResourceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      instancePoolId: map['instancePoolId'] == null ? null : pulumi.Output.create<String>(map['instancePoolId'] as String),
      isGeneralPurposeV2: map['isGeneralPurposeV2'] == null ? null : pulumi.Output.create<bool>(map['isGeneralPurposeV2'] as bool),
      keyId: map['keyId'] == null ? null : pulumi.Output.create<String>(map['keyId'] as String),
      licenseType: map['licenseType'] == null ? null : pulumi.Output.create<String>(map['licenseType'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceConfigurationId: map['maintenanceConfigurationId'] == null ? null : pulumi.Output.create<String>(map['maintenanceConfigurationId'] as String),
      managedInstanceCreateMode: map['managedInstanceCreateMode'] == null ? null : pulumi.Output.create<String>(map['managedInstanceCreateMode'] as String),
      managedInstanceName: map['managedInstanceName'] == null ? null : pulumi.Output.create<String>(map['managedInstanceName'] as String),
      minimalTlsVersion: map['minimalTlsVersion'] == null ? null : pulumi.Output.create<String>(map['minimalTlsVersion'] as String),
      pricingModel: map['pricingModel'] == null ? null : pulumi.Output.create<String>(map['pricingModel'] as String),
      primaryUserAssignedIdentityId: map['primaryUserAssignedIdentityId'] == null ? null : pulumi.Output.create<String>(map['primaryUserAssignedIdentityId'] as String),
      proxyOverride: map['proxyOverride'] == null ? null : pulumi.Output.create<String>(map['proxyOverride'] as String),
      publicDataEndpointEnabled: map['publicDataEndpointEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicDataEndpointEnabled'] as bool),
      requestedBackupStorageRedundancy: map['requestedBackupStorageRedundancy'] == null ? null : pulumi.Output.create<String>(map['requestedBackupStorageRedundancy'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      restorePointInTime: map['restorePointInTime'] == null ? null : pulumi.Output.create<String>(map['restorePointInTime'] as String),
      servicePrincipal: map['servicePrincipal'] == null ? null : pulumi.Output.create<ServicePrincipal>(ServicePrincipal.fromMap((map['servicePrincipal'] as Map).cast<String, dynamic>())),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      sourceManagedInstanceId: map['sourceManagedInstanceId'] == null ? null : pulumi.Output.create<String>(map['sourceManagedInstanceId'] as String),
      storageIOps: map['storageIOps'] == null ? null : pulumi.Output.create<int>(map['storageIOps'] as int),
      storageSizeInGB: map['storageSizeInGB'] == null ? null : pulumi.Output.create<int>(map['storageSizeInGB'] as int),
      storageThroughputMBps: map['storageThroughputMBps'] == null ? null : pulumi.Output.create<int>(map['storageThroughputMBps'] as int),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timezoneId: map['timezoneId'] == null ? null : pulumi.Output.create<String>(map['timezoneId'] as String),
      vCores: map['vCores'] == null ? null : pulumi.Output.create<int>(map['vCores'] as int),
      zoneRedundant: map['zoneRedundant'] == null ? null : pulumi.Output.create<bool>(map['zoneRedundant'] as bool),
    );
  }
}

