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
    this.administratorLogin,
    this.administratorLoginPassword,
    this.administrators,
    this.authenticationMetadata,
    this.collation,
    this.databaseFormat,
    this.dnsZonePartner,
    this.hybridSecondaryUsage,
    this.identity,
    this.instancePoolId,
    this.isGeneralPurposeV2,
    this.keyId,
    this.licenseType,
    this.location,
    this.maintenanceConfigurationId,
    this.managedInstanceCreateMode,
    this.managedInstanceName,
    this.minimalTlsVersion,
    this.pricingModel,
    this.primaryUserAssignedIdentityId,
    this.proxyOverride,
    this.publicDataEndpointEnabled,
    this.requestedBackupStorageRedundancy,
    required this.resourceGroupName,
    this.restorePointInTime,
    this.servicePrincipal,
    this.sku,
    this.sourceManagedInstanceId,
    this.storageIOps,
    this.storageSizeInGB,
    this.storageThroughputMBps,
    this.subnetId,
    this.tags,
    this.timezoneId,
    this.vCores,
    this.zoneRedundant,
  });

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
      administratorLogin: (() { final guardedValue = map['administratorLogin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      administratorLoginPassword: (() { final guardedValue = map['administratorLoginPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      administrators: (() { final guardedValue = map['administrators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedInstanceExternalAdministrator.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authenticationMetadata: (() { final guardedValue = map['authenticationMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseFormat: (() { final guardedValue = map['databaseFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsZonePartner: (() { final guardedValue = map['dnsZonePartner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hybridSecondaryUsage: (() { final guardedValue = map['hybridSecondaryUsage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instancePoolId: (() { final guardedValue = map['instancePoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isGeneralPurposeV2: (() { final guardedValue = map['isGeneralPurposeV2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceConfigurationId: (() { final guardedValue = map['maintenanceConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedInstanceCreateMode: (() { final guardedValue = map['managedInstanceCreateMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedInstanceName: (() { final guardedValue = map['managedInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimalTlsVersion: (() { final guardedValue = map['minimalTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pricingModel: (() { final guardedValue = map['pricingModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryUserAssignedIdentityId: (() { final guardedValue = map['primaryUserAssignedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyOverride: (() { final guardedValue = map['proxyOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicDataEndpointEnabled: (() { final guardedValue = map['publicDataEndpointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requestedBackupStorageRedundancy: (() { final guardedValue = map['requestedBackupStorageRedundancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      restorePointInTime: (() { final guardedValue = map['restorePointInTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipal: (() { final guardedValue = map['servicePrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePrincipal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Sku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceManagedInstanceId: (() { final guardedValue = map['sourceManagedInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageIOps: (() { final guardedValue = map['storageIOps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageSizeInGB: (() { final guardedValue = map['storageSizeInGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageThroughputMBps: (() { final guardedValue = map['storageThroughputMBps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timezoneId: (() { final guardedValue = map['timezoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vCores: (() { final guardedValue = map['vCores']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

