// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_azure_active_directory_administrator.dart';
import 'managed_instance_identity.dart';

/// Input properties used for looking up and filtering ManagedInstance resources.
class ManagedInstanceState {
  /// The administrator login name for the new SQL Managed Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? administratorLogin;
  /// The password associated with the `administrator_login` user. Needs to comply with Azure's [Password Policy](https://msdn.microsoft.com/library/ms161959.aspx)
  ///
  /// > **Note:** Unless `azure_active_directory_administrator.azuread_authentication_only_enabled` is set to `true`, `administrator_login` and `administrator_login_password` are required.
  final pulumi.Input<String>? administratorLoginPassword;
  /// An `azure_active_directory_administrator` block as defined below.
  final pulumi.Input<ManagedInstanceAzureActiveDirectoryAdministrator>? azureActiveDirectoryAdministrator;
  /// Specifies how the SQL Managed Instance will be collated. Defaults to `SQL_Latin1_General_CP1_CI_AS`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? collation;
  /// Specifies the internal format of the SQL Managed Instance databases specific to the SQL engine version. Possible values are `AlwaysUpToDate` and `SQLServer2022`. Defaults to `SQLServer2022`.
  ///
  /// > **Note:** Changing `database_format` from `AlwaysUpToDate` to `SQLServer2022` forces a new SQL Managed Instance to be created.
  final pulumi.Input<String>? databaseFormat;
  /// The Dns Zone where the SQL Managed Instance is located.
  final pulumi.Input<String>? dnsZone;
  /// The ID of the SQL Managed Instance which will share the DNS zone. This is a prerequisite for creating an `azurerm_sql_managed_instance_failover_group`. Setting this after creation forces a new resource to be created.
  final pulumi.Input<String>? dnsZonePartnerId;
  /// The fully qualified domain name of the Azure Managed SQL Instance
  final pulumi.Input<String>? fqdn;
  /// Specifies the hybrid secondary usage for disaster recovery of the SQL Managed Instance. Possible values are `Active` and `Passive`. Defaults to `Active`.
  final pulumi.Input<String>? hybridSecondaryUsage;
  /// An `identity` block as defined below.
  final pulumi.Input<ManagedInstanceIdentity>? identity;
  /// What type of license the Managed Instance will use. Possible values are `LicenseIncluded` and `BasePrice`.
  final pulumi.Input<String>? licenseType;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Public Maintenance Configuration window to apply to the SQL Managed Instance. Possible values are `SQL_Default` or an Azure Location in the format `SQL_{Location}_MI_{Size}`(for example `SQL_EastUS_MI_1`). Defaults to `SQL_Default`.
  final pulumi.Input<String>? maintenanceConfigurationName;
  /// The Minimum TLS Version. Default value is `1.2` Valid values include `1.0`, `1.1`, `1.2`.
  ///
  /// > **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
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
  /// Maximum storage space for the SQL Managed instance. This should be a multiple of 32 (GB).
  ///
  /// > **Note:** The maximum storage size varies depending on the service tier and hardware generation. For General Purpose Next-gen instances, the maximum is 32,768 GB (32 TB), while Business Critical instances support up to 16,384 GB (16 TB). Refer to [Azure SQL Managed Instance resource limits](https://learn.microsoft.com/en-us/azure/azure-sql/managed-instance/resource-limits) for detailed information.
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
  final pulumi.Input<bool>? zoneRedundantEnabled;

  /// Creates a new [ManagedInstanceState].
  /// [administratorLogin] The administrator login name for the new SQL Managed Instance. Changing this forces a new resource to be created.
  /// [administratorLoginPassword] The password associated with the `administrator_login` user. Needs to comply with Azure's [Password Policy](https://msdn.microsoft.com/library/ms161959.aspx)
  /// [azureActiveDirectoryAdministrator] An `azure_active_directory_administrator` block as defined below.
  /// [collation] Specifies how the SQL Managed Instance will be collated. Defaults to `SQL_Latin1_General_CP1_CI_AS`. Changing this forces a new resource to be created.
  /// [databaseFormat] Specifies the internal format of the SQL Managed Instance databases specific to the SQL engine version. Possible values are `AlwaysUpToDate` and `SQLServer2022`. Defaults to `SQLServer2022`.
  /// [dnsZone] The Dns Zone where the SQL Managed Instance is located.
  /// [dnsZonePartnerId] The ID of the SQL Managed Instance which will share the DNS zone. This is a prerequisite for creating an `azurerm_sql_managed_instance_failover_group`. Setting this after creation forces a new resource to be created.
  /// [fqdn] The fully qualified domain name of the Azure Managed SQL Instance
  /// [hybridSecondaryUsage] Specifies the hybrid secondary usage for disaster recovery of the SQL Managed Instance. Possible values are `Active` and `Passive`. Defaults to `Active`.
  /// [identity] An `identity` block as defined below.
  /// [licenseType] What type of license the Managed Instance will use. Possible values are `LicenseIncluded` and `BasePrice`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [maintenanceConfigurationName] The name of the Public Maintenance Configuration window to apply to the SQL Managed Instance. Possible values are `SQL_Default` or an Azure Location in the format `SQL_{Location}_MI_{Size}`(for example `SQL_EastUS_MI_1`). Defaults to `SQL_Default`.
  /// [minimumTlsVersion] The Minimum TLS Version. Default value is `1.2` Valid values include `1.0`, `1.1`, `1.2`.
  /// [name] The name of the SQL Managed Instance. This needs to be globally unique within Azure. Changing this forces a new resource to be created.
  /// [proxyOverride] Specifies how the SQL Managed Instance will be accessed. Defaults to `Default`. Possible values are `Default`, `Proxy`, and `Redirect`.
  /// [publicDataEndpointEnabled] Is the public data endpoint enabled? Defaults to `false`.
  /// [resourceGroupName] The name of the resource group in which to create the SQL Managed Instance. Changing this forces a new resource to be created.
  /// [servicePrincipalType] The service principal type. The only possible value is `SystemAssigned`.
  /// [skuName] Specifies the SKU Name for the SQL Managed Instance. Possible values are `GP_Gen4`, `GP_Gen5`, `GP_Gen8IM`, `GP_Gen8IH`, `BC_Gen4`, `BC_Gen5`, `BC_Gen8IM` or `BC_Gen8IH`.
  /// [storageAccountType] Specifies the storage account type used to store backups for this database. Possible values are `GRS`, `GZRS`, `LRS`, and `ZRS`. Defaults to `GRS`.
  /// [storageSizeInGb] Maximum storage space for the SQL Managed instance. This should be a multiple of 32 (GB).
  /// [subnetId] The subnet resource id that the SQL Managed Instance will be associated with.
  /// [tags] A mapping of tags to assign to the resource.
  /// [timezoneId] The TimeZone ID that the SQL Managed Instance will be operating in. Defaults to `UTC`. Changing this forces a new resource to be created.
  /// [vcores] Number of cores that should be assigned to the SQL Managed Instance. Values can be `8`, `16`, or `24` for Gen4 SKUs, or `4`, `6`, `8`, `10`, `12`, `16`, `20`, `24`, `32`, `40`, `48`, `56`, `64`, `80`, `96` or `128` for Gen5 SKUs.
  /// [zoneRedundantEnabled] Specifies whether the SQL Managed Instance is zone redundant. Defaults to `false`.
  ManagedInstanceState({
    this.administratorLogin,
    this.administratorLoginPassword,
    this.azureActiveDirectoryAdministrator,
    this.collation,
    this.databaseFormat,
    this.dnsZone,
    this.dnsZonePartnerId,
    this.fqdn,
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
      administratorLogin: map['administratorLogin'] == null ? null : (map['administratorLogin']! as String).input(),
      administratorLoginPassword: map['administratorLoginPassword'] == null ? null : (map['administratorLoginPassword']! as String).input(),
      azureActiveDirectoryAdministrator: map['azureActiveDirectoryAdministrator'] == null ? null : (ManagedInstanceAzureActiveDirectoryAdministrator.fromMap((map['azureActiveDirectoryAdministrator']! as Map).cast<String, dynamic>())).input(),
      collation: map['collation'] == null ? null : (map['collation']! as String).input(),
      databaseFormat: map['databaseFormat'] == null ? null : (map['databaseFormat']! as String).input(),
      dnsZone: map['dnsZone'] == null ? null : (map['dnsZone']! as String).input(),
      dnsZonePartnerId: map['dnsZonePartnerId'] == null ? null : (map['dnsZonePartnerId']! as String).input(),
      fqdn: map['fqdn'] == null ? null : (map['fqdn']! as String).input(),
      hybridSecondaryUsage: map['hybridSecondaryUsage'] == null ? null : (map['hybridSecondaryUsage']! as String).input(),
      identity: map['identity'] == null ? null : (ManagedInstanceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      maintenanceConfigurationName: map['maintenanceConfigurationName'] == null ? null : (map['maintenanceConfigurationName']! as String).input(),
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : (map['minimumTlsVersion']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      proxyOverride: map['proxyOverride'] == null ? null : (map['proxyOverride']! as String).input(),
      publicDataEndpointEnabled: map['publicDataEndpointEnabled'] == null ? null : (map['publicDataEndpointEnabled']! as bool).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      servicePrincipalType: map['servicePrincipalType'] == null ? null : (map['servicePrincipalType']! as String).input(),
      skuName: map['skuName'] == null ? null : (map['skuName']! as String).input(),
      storageAccountType: map['storageAccountType'] == null ? null : (map['storageAccountType']! as String).input(),
      storageSizeInGb: map['storageSizeInGb'] == null ? null : (map['storageSizeInGb']! as int).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      timezoneId: map['timezoneId'] == null ? null : (map['timezoneId']! as String).input(),
      vcores: map['vcores'] == null ? null : (map['vcores']! as int).input(),
      zoneRedundantEnabled: map['zoneRedundantEnabled'] == null ? null : (map['zoneRedundantEnabled']! as bool).input(),
    );
  }
}

