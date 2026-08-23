// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_azure_active_directory_administrator.dart';
import 'managed_instance_identity.dart';

/// Input properties used for looking up and filtering ManagedInstance resources.
class ManagedInstanceState {
  /// The administrator login name for the new SQL Managed Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? administratorLogin;
  /// The password associated with the `administratorLogin` user. Needs to comply with Azure's [Password Policy](https://msdn.microsoft.com/library/ms161959.aspx)
  ///
  /// &gt; **Note:** Unless `azure_active_directory_administrator.azuread_authentication_only_enabled` is set to `true`, `administratorLogin` and `administratorLoginPassword` are required.
  final pulumi.Input<String>? administratorLoginPassword;
  /// An `azureActiveDirectoryAdministrator` block as defined below.
  final pulumi.Input<ManagedInstanceAzureActiveDirectoryAdministrator>? azureActiveDirectoryAdministrator;
  /// Specifies how the SQL Managed Instance will be collated. Defaults to `SQL_Latin1_General_CP1_CI_AS`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? collation;
  /// Specifies the internal format of the SQL Managed Instance databases specific to the SQL engine version. Possible values are `AlwaysUpToDate` and `SQLServer2022`. Defaults to `SQLServer2022`.
  ///
  /// &gt; **Note:** Changing `databaseFormat` from `AlwaysUpToDate` to `SQLServer2022` forces a new SQL Managed Instance to be created.
  final pulumi.Input<String>? databaseFormat;
  /// The Dns Zone where the SQL Managed Instance is located.
  final pulumi.Input<String>? dnsZone;
  /// The ID of the SQL Managed Instance which will share the DNS zone. This is a prerequisite for creating an `azurermSqlManagedInstanceFailoverGroup`. Setting this after creation forces a new resource to be created.
  final pulumi.Input<String>? dnsZonePartnerId;
  /// The fully qualified domain name of the Azure Managed SQL Instance
  final pulumi.Input<String>? fqdn;
  /// Specifies whether the SQL Managed Instance should use the Next-gen General Purpose service tier. Defaults to `false`.
  ///
  /// &gt; **Note:** The `generalPurposeV2Enabled` property can only be set to `true` when using a General Purpose (`GP_*`) SKU.
  final pulumi.Input<bool>? generalPurposeV2Enabled;
  /// Specifies the hybrid secondary usage for disaster recovery of the SQL Managed Instance. Possible values are `Active` and `Passive`. Defaults to `Active`.
  final pulumi.Input<String>? hybridSecondaryUsage;
  /// An `identity` block as defined below.
  final pulumi.Input<ManagedInstanceIdentity>? identity;
  /// What type of license the Managed Instance will use. Possible values are `LicenseIncluded` and `BasePrice`.
  final pulumi.Input<String>? licenseType;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Public Maintenance Configuration window to apply to the SQL Managed Instance. Valid values include `SQL_Default` or an Azure Location in the format `SQL_{Location}_MI_{Size}`(for example `SQL_EastUS_MI_1`). Defaults to `SQL_Default`.
  final pulumi.Input<String>? maintenanceConfigurationName;
  /// The Minimum TLS Version. Default value is `1.2` Valid values include `1.0`, `1.1`, `1.2`.
  ///
  /// &gt; **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  final pulumi.Input<String>? minimumTlsVersion;
  /// The name of the SQL Managed Instance. This needs to be globally unique within Azure. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies how the SQL Managed Instance will be accessed. Defaults to `Default`. Possible values are `Default`, `Proxy`, and `Redirect`.
  final pulumi.Input<String>? proxyOverride;
  /// Is the public data endpoint enabled? Defaults to `false`.
  final pulumi.Input<bool>? publicDataEndpointEnabled;
  /// The name of the resource group in which to create the SQL Managed Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The service principal type. The only possible value is `SystemAssigned`.
  final pulumi.Input<String>? servicePrincipalType;
  /// Specifies the SKU Name for the SQL Managed Instance. Possible values are `GP_Gen4`, `GP_Gen5`, `GP_Gen8IM`, `GP_Gen8IH`, `BC_Gen4`, `BC_Gen5`, `BC_Gen8IM` or `BC_Gen8IH`.
  final pulumi.Input<String>? skuName;
  /// Specifies the storage account type used to store backups for this database. Possible values are `GRS`, `GZRS`, `LRS`, and `ZRS`. Defaults to `GRS`.
  final pulumi.Input<String>? storageAccountType;
  /// The storage IOPS for the SQL Managed Instance. Possible values are between `300` and `80000`. This can only be specified when `generalPurposeV2Enabled` is `true`.
  ///
  /// &gt; **Note:** The effective maximum value for `storageIops` depends on the selected `skuName` and `vcores`. Refer to [Azure SQL Managed Instance resource limits](https://learn.microsoft.com/en-us/azure/azure-sql/managed-instance/resource-limits) for detailed information.
  final pulumi.Input<int>? storageIops;
  /// Maximum storage space for the SQL Managed instance. This should be a multiple of 32 (GB).
  ///
  /// &gt; **Note:** The maximum storage size varies depending on the service tier and hardware generation. For General Purpose Next-gen instances, the maximum is 32,768 GB (32 TB), while Business Critical instances support up to 16,384 GB (16 TB). Refer to [Azure SQL Managed Instance resource limits](https://learn.microsoft.com/en-us/azure/azure-sql/managed-instance/resource-limits) for detailed information.
  final pulumi.Input<int>? storageSizeInGb;
  /// The subnet resource id that the SQL Managed Instance will be associated with.
  final pulumi.Input<String>? subnetId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The TimeZone ID that the SQL Managed Instance will be operating in. Defaults to `UTC`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? timezoneId;
  /// Number of cores that should be assigned to the SQL Managed Instance. Values can be `8`, `16`, or `24` for Gen4 SKUs, or `4`, `6`, `8`, `10`, `12`, `16`, `20`, `24`, `32`, `40`, `48`, `56`, `64`, `80`, `96` or `128` for Gen5 SKUs.
  final pulumi.Input<int>? vcores;
  /// Specifies whether the SQL Managed Instance is zone redundant. Defaults to `false`.
  ///
  /// &gt; **Note:** `zoneRedundantEnabled` cannot be specified when `generalPurposeV2Enabled` is `true` because zone redundancy is not available for the Next-gen General Purpose service tier.)
  final pulumi.Input<bool>? zoneRedundantEnabled;

  /// Creates a new [ManagedInstanceState].
  /// [administratorLogin] The administrator login name for the new SQL Managed Instance. Changing this forces a new resource to be created.
  /// [administratorLoginPassword] The password associated with the `administratorLogin` user. Needs to comply with Azure's [Password Policy](https://msdn.microsoft.com/library/ms161959.aspx)
  /// [azureActiveDirectoryAdministrator] An `azureActiveDirectoryAdministrator` block as defined below.
  /// [collation] Specifies how the SQL Managed Instance will be collated. Defaults to `SQL_Latin1_General_CP1_CI_AS`. Changing this forces a new resource to be created.
  /// [databaseFormat] Specifies the internal format of the SQL Managed Instance databases specific to the SQL engine version. Possible values are `AlwaysUpToDate` and `SQLServer2022`. Defaults to `SQLServer2022`.
  /// [dnsZone] The Dns Zone where the SQL Managed Instance is located.
  /// [dnsZonePartnerId] The ID of the SQL Managed Instance which will share the DNS zone. This is a prerequisite for creating an `azurermSqlManagedInstanceFailoverGroup`. Setting this after creation forces a new resource to be created.
  /// [fqdn] The fully qualified domain name of the Azure Managed SQL Instance
  /// [generalPurposeV2Enabled] Specifies whether the SQL Managed Instance should use the Next-gen General Purpose service tier. Defaults to `false`.
  /// [hybridSecondaryUsage] Specifies the hybrid secondary usage for disaster recovery of the SQL Managed Instance. Possible values are `Active` and `Passive`. Defaults to `Active`.
  /// [identity] An `identity` block as defined below.
  /// [licenseType] What type of license the Managed Instance will use. Possible values are `LicenseIncluded` and `BasePrice`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [maintenanceConfigurationName] The name of the Public Maintenance Configuration window to apply to the SQL Managed Instance. Valid values include `SQL_Default` or an Azure Location in the format `SQL_{Location}_MI_{Size}`(for example `SQL_EastUS_MI_1`). Defaults to `SQL_Default`.
  /// [minimumTlsVersion] The Minimum TLS Version. Default value is `1.2` Valid values include `1.0`, `1.1`, `1.2`.
  /// [name] The name of the SQL Managed Instance. This needs to be globally unique within Azure. Changing this forces a new resource to be created.
  /// [proxyOverride] Specifies how the SQL Managed Instance will be accessed. Defaults to `Default`. Possible values are `Default`, `Proxy`, and `Redirect`.
  /// [publicDataEndpointEnabled] Is the public data endpoint enabled? Defaults to `false`.
  /// [resourceGroupName] The name of the resource group in which to create the SQL Managed Instance. Changing this forces a new resource to be created.
  /// [servicePrincipalType] The service principal type. The only possible value is `SystemAssigned`.
  /// [skuName] Specifies the SKU Name for the SQL Managed Instance. Possible values are `GP_Gen4`, `GP_Gen5`, `GP_Gen8IM`, `GP_Gen8IH`, `BC_Gen4`, `BC_Gen5`, `BC_Gen8IM` or `BC_Gen8IH`.
  /// [storageAccountType] Specifies the storage account type used to store backups for this database. Possible values are `GRS`, `GZRS`, `LRS`, and `ZRS`. Defaults to `GRS`.
  /// [storageIops] The storage IOPS for the SQL Managed Instance. Possible values are between `300` and `80000`. This can only be specified when `generalPurposeV2Enabled` is `true`.
  /// [storageSizeInGb] Maximum storage space for the SQL Managed instance. This should be a multiple of 32 (GB).
  /// [subnetId] The subnet resource id that the SQL Managed Instance will be associated with.
  /// [tags] A mapping of tags to assign to the resource.
  /// [timezoneId] The TimeZone ID that the SQL Managed Instance will be operating in. Defaults to `UTC`. Changing this forces a new resource to be created.
  /// [vcores] Number of cores that should be assigned to the SQL Managed Instance. Values can be `8`, `16`, or `24` for Gen4 SKUs, or `4`, `6`, `8`, `10`, `12`, `16`, `20`, `24`, `32`, `40`, `48`, `56`, `64`, `80`, `96` or `128` for Gen5 SKUs.
  /// [zoneRedundantEnabled] Specifies whether the SQL Managed Instance is zone redundant. Defaults to `false`.
  const ManagedInstanceState({
    this.administratorLogin,
    this.administratorLoginPassword,
    this.azureActiveDirectoryAdministrator,
    this.collation,
    this.databaseFormat,
    this.dnsZone,
    this.dnsZonePartnerId,
    this.fqdn,
    this.generalPurposeV2Enabled,
    this.hybridSecondaryUsage,
    this.identity,
    this.licenseType,
    this.location,
    this.maintenanceConfigurationName,
    this.minimumTlsVersion,
    this.name,
    this.proxyOverride,
    this.publicDataEndpointEnabled,
    this.resourceGroupName,
    this.servicePrincipalType,
    this.skuName,
    this.storageAccountType,
    this.storageIops,
    this.storageSizeInGb,
    this.subnetId,
    this.tags,
    this.timezoneId,
    this.vcores,
    this.zoneRedundantEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'administratorLoginPassword': ?administratorLoginPassword,
      'azureActiveDirectoryAdministrator': ?pulumi.Input.mapOptionalInputValue<ManagedInstanceAzureActiveDirectoryAdministrator, Map<String, dynamic>>(azureActiveDirectoryAdministrator, (value) => value.toMap()),
      'collation': ?collation,
      'databaseFormat': ?databaseFormat,
      'dnsZone': ?dnsZone,
      'dnsZonePartnerId': ?dnsZonePartnerId,
      'fqdn': ?fqdn,
      'generalPurposeV2Enabled': ?generalPurposeV2Enabled,
      'hybridSecondaryUsage': ?hybridSecondaryUsage,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedInstanceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'licenseType': ?licenseType,
      'location': ?location,
      'maintenanceConfigurationName': ?maintenanceConfigurationName,
      'minimumTlsVersion': ?minimumTlsVersion,
      'name': ?name,
      'proxyOverride': ?proxyOverride,
      'publicDataEndpointEnabled': ?publicDataEndpointEnabled,
      'resourceGroupName': ?resourceGroupName,
      'servicePrincipalType': ?servicePrincipalType,
      'skuName': ?skuName,
      'storageAccountType': ?storageAccountType,
      'storageIops': ?storageIops,
      'storageSizeInGb': ?storageSizeInGb,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'timezoneId': ?timezoneId,
      'vcores': ?vcores,
      'zoneRedundantEnabled': ?zoneRedundantEnabled,
    };
  }

  factory ManagedInstanceState.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceState(
      administratorLogin: (() { final guardedValue = map['administratorLogin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      administratorLoginPassword: (() { final guardedValue = map['administratorLoginPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureActiveDirectoryAdministrator: (() { final guardedValue = map['azureActiveDirectoryAdministrator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedInstanceAzureActiveDirectoryAdministrator.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseFormat: (() { final guardedValue = map['databaseFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsZone: (() { final guardedValue = map['dnsZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsZonePartnerId: (() { final guardedValue = map['dnsZonePartnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generalPurposeV2Enabled: (() { final guardedValue = map['generalPurposeV2Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hybridSecondaryUsage: (() { final guardedValue = map['hybridSecondaryUsage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedInstanceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceConfigurationName: (() { final guardedValue = map['maintenanceConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyOverride: (() { final guardedValue = map['proxyOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicDataEndpointEnabled: (() { final guardedValue = map['publicDataEndpointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipalType: (() { final guardedValue = map['servicePrincipalType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageIops: (() { final guardedValue = map['storageIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageSizeInGb: (() { final guardedValue = map['storageSizeInGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timezoneId: (() { final guardedValue = map['timezoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vcores: (() { final guardedValue = map['vcores']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      zoneRedundantEnabled: (() { final guardedValue = map['zoneRedundantEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
