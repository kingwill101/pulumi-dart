// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_external_administrator_response.dart';
import 'managed_instance_pec_property_response.dart';
import 'resource_identity_response.dart';
import 'service_principal_response.dart';
import 'sku_response.dart';

/// Result data returned by getManagedInstance.
class GetManagedInstanceResult {
  /// Administrator username for the managed instance. Can only be specified when the managed instance is being created (and is required for creation).
  final String? administratorLogin;
  /// The Azure Active Directory administrator of the instance. This can only be used at instance create time. If used for instance update, it will be ignored or it will result in an error. For updates individual APIs will need to be used.
  final ManagedInstanceExternalAdministratorResponse? administrators;
  /// The managed instance's authentication metadata lookup mode.
  final String? authenticationMetadata;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Collation of the managed instance.
  final String? collation;
  /// Specifies the point in time (ISO8601 format) of the Managed Instance creation.
  final String createTime;
  /// The storage account type used to store backups for this instance. The options are Local (LocallyRedundantStorage), Zone (ZoneRedundantStorage), Geo (GeoRedundantStorage) and GeoZone(GeoZoneRedundantStorage)
  final String currentBackupStorageRedundancy;
  /// Specifies the internal format of instance databases specific to the SQL engine version.
  final String? databaseFormat;
  /// The Dns Zone that the managed instance is in.
  final String dnsZone;
  /// Status of external governance.
  final String externalGovernanceStatus;
  /// The fully qualified domain name of the managed instance.
  final String fullyQualifiedDomainName;
  /// Hybrid secondary usage. Possible values are 'Active' (default value) and 'Passive' (customer uses the secondary as Passive DR).
  final String? hybridSecondaryUsage;
  /// Hybrid secondary usage detected. Possible values are 'Active' (customer does not meet the requirements to use the secondary as Passive DR) and 'Passive' (customer meets the requirements to use the secondary as Passive DR).
  final String hybridSecondaryUsageDetected;
  /// Resource ID.
  final String id;
  /// The Azure Active Directory identity of the managed instance.
  final ResourceIdentityResponse? identity;
  /// The Id of the instance pool this managed server belongs to.
  final String? instancePoolId;
  /// Whether or not this is a GPv2 variant of General Purpose edition.
  final bool? isGeneralPurposeV2;
  /// A CMK URI of the key to use for encryption.
  final String? keyId;
  /// The license type. Possible values are 'LicenseIncluded' (regular price inclusive of a new SQL license) and 'BasePrice' (discounted AHB price for bringing your own SQL licenses).
  final String? licenseType;
  /// Resource location.
  final String location;
  /// Specifies maintenance configuration id to apply to this managed instance.
  final String? maintenanceConfigurationId;
  /// Minimal TLS version. Allowed values: 'None', '1.0', '1.1', '1.2'
  final String? minimalTlsVersion;
  /// Resource name.
  final String name;
  /// Pricing model of Managed Instance.
  final String? pricingModel;
  /// The resource id of a user assigned identity to be used by default.
  final String? primaryUserAssignedIdentityId;
  /// List of private endpoint connections on a managed instance.
  final List<ManagedInstancePecPropertyResponse> privateEndpointConnections;
  /// Provisioning state of managed instance.
  final String provisioningState;
  /// Connection type used for connecting to the instance.
  final String? proxyOverride;
  /// Whether or not the public data endpoint is enabled.
  final bool? publicDataEndpointEnabled;
  /// The storage account type to be used to store backups for this instance. The options are Local (LocallyRedundantStorage), Zone (ZoneRedundantStorage), Geo (GeoRedundantStorage) and GeoZone(GeoZoneRedundantStorage)
  final String? requestedBackupStorageRedundancy;
  /// The managed instance's service principal.
  final ServicePrincipalResponse? servicePrincipal;
  /// Managed instance SKU. Allowed values for sku.name: GP_Gen5, GP_G8IM, GP_G8IH, BC_Gen5, BC_G8IM, BC_G8IH
  final SkuResponse? sku;
  /// The state of the managed instance.
  final String state;
  /// Storage IOps. Minimum value: 300. Maximum value: 80000. Increments of 1 IOps allowed only. Maximum value depends on the selected hardware family and number of vCores.
  final int? storageIOps;
  /// Storage size in GB. Minimum value: 32. Maximum value: 16384. Increments of 32 GB allowed only. Maximum value depends on the selected hardware family and number of vCores.
  final int? storageSizeInGB;
  /// Storage throughput MBps parameter is not supported in the instance create/update operation.
  final int? storageThroughputMBps;
  /// Subnet resource ID for the managed instance.
  final String? subnetId;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Id of the timezone. Allowed values are timezones supported by Windows.
  /// Windows keeps details on supported timezones, including the id, in registry under
  /// KEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Time Zones.
  /// You can get those registry values via SQL Server by querying SELECT name AS timezone_id FROM sys.time_zone_info.
  /// List of Ids can also be obtained by executing [System.TimeZoneInfo]::GetSystemTimeZones() in PowerShell.
  /// An example of valid timezone id is "Pacific Standard Time" or "W. Europe Standard Time".
  final String? timezoneId;
  /// Resource type.
  final String type;
  /// The number of vCores. Allowed values: 8, 16, 24, 32, 40, 64, 80.
  final int? vCores;
  /// Virtual cluster resource id for the Managed Instance.
  final String virtualClusterId;
  /// Whether or not the multi-az is enabled.
  final bool? zoneRedundant;

  /// Creates a new [GetManagedInstanceResult].
  /// [administratorLogin] Administrator username for the managed instance. Can only be specified when the managed instance is being created (and is required for creation).
  /// [administrators] The Azure Active Directory administrator of the instance. This can only be used at instance create time. If used for instance update, it will be ignored or it will result in an error. For updates individual APIs will need to be used.
  /// [authenticationMetadata] The managed instance's authentication metadata lookup mode.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [collation] Collation of the managed instance.
  /// [createTime] Specifies the point in time (ISO8601 format) of the Managed Instance creation.
  /// [currentBackupStorageRedundancy] The storage account type used to store backups for this instance. The options are Local (LocallyRedundantStorage), Zone (ZoneRedundantStorage), Geo (GeoRedundantStorage) and GeoZone(GeoZoneRedundantStorage)
  /// [databaseFormat] Specifies the internal format of instance databases specific to the SQL engine version.
  /// [dnsZone] The Dns Zone that the managed instance is in.
  /// [externalGovernanceStatus] Status of external governance.
  /// [fullyQualifiedDomainName] The fully qualified domain name of the managed instance.
  /// [hybridSecondaryUsage] Hybrid secondary usage. Possible values are 'Active' (default value) and 'Passive' (customer uses the secondary as Passive DR).
  /// [hybridSecondaryUsageDetected] Hybrid secondary usage detected. Possible values are 'Active' (customer does not meet the requirements to use the secondary as Passive DR) and 'Passive' (customer meets the requirements to use the secondary as Passive DR).
  /// [id] Resource ID.
  /// [identity] The Azure Active Directory identity of the managed instance.
  /// [instancePoolId] The Id of the instance pool this managed server belongs to.
  /// [isGeneralPurposeV2] Whether or not this is a GPv2 variant of General Purpose edition.
  /// [keyId] A CMK URI of the key to use for encryption.
  /// [licenseType] The license type. Possible values are 'LicenseIncluded' (regular price inclusive of a new SQL license) and 'BasePrice' (discounted AHB price for bringing your own SQL licenses).
  /// [location] Resource location.
  /// [maintenanceConfigurationId] Specifies maintenance configuration id to apply to this managed instance.
  /// [minimalTlsVersion] Minimal TLS version. Allowed values: 'None', '1.0', '1.1', '1.2'
  /// [name] Resource name.
  /// [pricingModel] Pricing model of Managed Instance.
  /// [primaryUserAssignedIdentityId] The resource id of a user assigned identity to be used by default.
  /// [privateEndpointConnections] List of private endpoint connections on a managed instance.
  /// [provisioningState] Provisioning state of managed instance.
  /// [proxyOverride] Connection type used for connecting to the instance.
  /// [publicDataEndpointEnabled] Whether or not the public data endpoint is enabled.
  /// [requestedBackupStorageRedundancy] The storage account type to be used to store backups for this instance. The options are Local (LocallyRedundantStorage), Zone (ZoneRedundantStorage), Geo (GeoRedundantStorage) and GeoZone(GeoZoneRedundantStorage)
  /// [servicePrincipal] The managed instance's service principal.
  /// [sku] Managed instance SKU. Allowed values for sku.name: GP_Gen5, GP_G8IM, GP_G8IH, BC_Gen5, BC_G8IM, BC_G8IH
  /// [state] The state of the managed instance.
  /// [storageIOps] Storage IOps. Minimum value: 300. Maximum value: 80000. Increments of 1 IOps allowed only. Maximum value depends on the selected hardware family and number of vCores.
  /// [storageSizeInGB] Storage size in GB. Minimum value: 32. Maximum value: 16384. Increments of 32 GB allowed only. Maximum value depends on the selected hardware family and number of vCores.
  /// [storageThroughputMBps] Storage throughput MBps parameter is not supported in the instance create/update operation.
  /// [subnetId] Subnet resource ID for the managed instance.
  /// [tags] Resource tags.
  /// [timezoneId] Id of the timezone. Allowed values are timezones supported by Windows.
  /// [type] Resource type.
  /// [vCores] The number of vCores. Allowed values: 8, 16, 24, 32, 40, 64, 80.
  /// [virtualClusterId] Virtual cluster resource id for the Managed Instance.
  /// [zoneRedundant] Whether or not the multi-az is enabled.
  GetManagedInstanceResult({
    this.administratorLogin,
    this.administrators,
    this.authenticationMetadata,
    required this.azureApiVersion,
    this.collation,
    required this.createTime,
    required this.currentBackupStorageRedundancy,
    this.databaseFormat,
    required this.dnsZone,
    required this.externalGovernanceStatus,
    required this.fullyQualifiedDomainName,
    this.hybridSecondaryUsage,
    required this.hybridSecondaryUsageDetected,
    required this.id,
    this.identity,
    this.instancePoolId,
    this.isGeneralPurposeV2,
    this.keyId,
    this.licenseType,
    required this.location,
    this.maintenanceConfigurationId,
    this.minimalTlsVersion,
    required this.name,
    this.pricingModel,
    this.primaryUserAssignedIdentityId,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.proxyOverride,
    this.publicDataEndpointEnabled,
    this.requestedBackupStorageRedundancy,
    this.servicePrincipal,
    this.sku,
    required this.state,
    this.storageIOps,
    this.storageSizeInGB,
    this.storageThroughputMBps,
    this.subnetId,
    this.tags,
    this.timezoneId,
    required this.type,
    this.vCores,
    required this.virtualClusterId,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'administrators': ?administrators?.toMap(),
      'authenticationMetadata': ?authenticationMetadata,
      'azureApiVersion': azureApiVersion,
      'collation': ?collation,
      'createTime': createTime,
      'currentBackupStorageRedundancy': currentBackupStorageRedundancy,
      'databaseFormat': ?databaseFormat,
      'dnsZone': dnsZone,
      'externalGovernanceStatus': externalGovernanceStatus,
      'fullyQualifiedDomainName': fullyQualifiedDomainName,
      'hybridSecondaryUsage': ?hybridSecondaryUsage,
      'hybridSecondaryUsageDetected': hybridSecondaryUsageDetected,
      'id': id,
      'identity': ?identity?.toMap(),
      'instancePoolId': ?instancePoolId,
      'isGeneralPurposeV2': ?isGeneralPurposeV2,
      'keyId': ?keyId,
      'licenseType': ?licenseType,
      'location': location,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
      'minimalTlsVersion': ?minimalTlsVersion,
      'name': name,
      'pricingModel': ?pricingModel,
      'primaryUserAssignedIdentityId': ?primaryUserAssignedIdentityId,
      'privateEndpointConnections': pulumi.Input.encodeList<ManagedInstancePecPropertyResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'proxyOverride': ?proxyOverride,
      'publicDataEndpointEnabled': ?publicDataEndpointEnabled,
      'requestedBackupStorageRedundancy': ?requestedBackupStorageRedundancy,
      'servicePrincipal': ?servicePrincipal?.toMap(),
      'sku': ?sku?.toMap(),
      'state': state,
      'storageIOps': ?storageIOps,
      'storageSizeInGB': ?storageSizeInGB,
      'storageThroughputMBps': ?storageThroughputMBps,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'timezoneId': ?timezoneId,
      'type': type,
      'vCores': ?vCores,
      'virtualClusterId': virtualClusterId,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory GetManagedInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetManagedInstanceResult(
      administratorLogin: (() { final guardedValue = map['administratorLogin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      administrators: (() { final guardedValue = map['administrators']; if (guardedValue == null) return null; return ManagedInstanceExternalAdministratorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      authenticationMetadata: (() { final guardedValue = map['authenticationMetadata']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: map['createTime'] as String,
      currentBackupStorageRedundancy: map['currentBackupStorageRedundancy'] as String,
      databaseFormat: (() { final guardedValue = map['databaseFormat']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsZone: map['dnsZone'] as String,
      externalGovernanceStatus: map['externalGovernanceStatus'] as String,
      fullyQualifiedDomainName: map['fullyQualifiedDomainName'] as String,
      hybridSecondaryUsage: (() { final guardedValue = map['hybridSecondaryUsage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hybridSecondaryUsageDetected: map['hybridSecondaryUsageDetected'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ResourceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      instancePoolId: (() { final guardedValue = map['instancePoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isGeneralPurposeV2: (() { final guardedValue = map['isGeneralPurposeV2']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      maintenanceConfigurationId: (() { final guardedValue = map['maintenanceConfigurationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      minimalTlsVersion: (() { final guardedValue = map['minimalTlsVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      pricingModel: (() { final guardedValue = map['pricingModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryUserAssignedIdentityId: (() { final guardedValue = map['primaryUserAssignedIdentityId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointConnections: pulumi.Input.decodeList<ManagedInstancePecPropertyResponse>(map['privateEndpointConnections']!, (value) => ManagedInstancePecPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      proxyOverride: (() { final guardedValue = map['proxyOverride']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicDataEndpointEnabled: (() { final guardedValue = map['publicDataEndpointEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      requestedBackupStorageRedundancy: (() { final guardedValue = map['requestedBackupStorageRedundancy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      servicePrincipal: (() { final guardedValue = map['servicePrincipal']; if (guardedValue == null) return null; return ServicePrincipalResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: map['state'] as String,
      storageIOps: (() { final guardedValue = map['storageIOps']; if (guardedValue == null) return null; return guardedValue as int; })(),
      storageSizeInGB: (() { final guardedValue = map['storageSizeInGB']; if (guardedValue == null) return null; return guardedValue as int; })(),
      storageThroughputMBps: (() { final guardedValue = map['storageThroughputMBps']; if (guardedValue == null) return null; return guardedValue as int; })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timezoneId: (() { final guardedValue = map['timezoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
      vCores: (() { final guardedValue = map['vCores']; if (guardedValue == null) return null; return guardedValue as int; })(),
      virtualClusterId: map['virtualClusterId'] as String,
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}

