// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_server_authentication.dart';
import 'flexible_server_cluster.dart';
import 'flexible_server_customer_managed_key.dart';
import 'flexible_server_high_availability.dart';
import 'flexible_server_identity.dart';
import 'flexible_server_maintenance_window.dart';

/// Input properties used for looking up and filtering FlexibleServer resources.
class FlexibleServerState {
  /// The Administrator login for the PostgreSQL Flexible Server. Required when `create_mode` is `Default` and `authentication.password_auth_enabled` is `true`.
  ///
  /// &gt; **Note:** Once `administrator_login` is specified, changing this forces a new PostgreSQL Flexible Server to be created.
  ///
  /// &gt; **Note:** To create with `administrator_login` specified or update with it first specified , `authentication.password_auth_enabled` must be set to `true`.
  final pulumi.Input<String>? administratorLogin;
  /// The Password associated with the `administrator_login` for the PostgreSQL Flexible Server.
  final pulumi.Input<String>? administratorPassword;
  /// An integer value used to trigger an update for `administrator_password_wo`. This property should be incremented when updating `administrator_password_wo`.
  final pulumi.Input<int>? administratorPasswordWoVersion;
  /// An `authentication` block as defined below.
  final pulumi.Input<FlexibleServerAuthentication>? authentication;
  /// Is the storage auto grow for PostgreSQL Flexible Server enabled? Defaults to `false`.
  final pulumi.Input<bool>? autoGrowEnabled;
  /// The backup retention days for the PostgreSQL Flexible Server. Possible values are between `7` and `35` days.
  final pulumi.Input<int>? backupRetentionDays;
  /// A `cluster` block as defined below.
  final pulumi.Input<FlexibleServerCluster>? cluster;
  /// The creation mode which can be used to restore or replicate existing servers. Possible values are `Default`, `GeoRestore`, `PointInTimeRestore`, `Replica`, `ReviveDropped` and `Update`.
  final pulumi.Input<String>? createMode;
  /// A `customer_managed_key` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<FlexibleServerCustomerManagedKey>? customerManagedKey;
  /// The ID of the virtual network subnet to create the PostgreSQL Flexible Server. The provided subnet should not have any other resource deployed in it and this subnet will be delegated to the PostgreSQL Flexible Server, if not already delegated. Changing this forces a new PostgreSQL Flexible Server to be created.
  final pulumi.Input<String>? delegatedSubnetId;
  /// The FQDN of the PostgreSQL Flexible Server.
  final pulumi.Input<String>? fqdn;
  /// Is Geo-Redundant backup enabled on the PostgreSQL Flexible Server. Defaults to `false`. Changing this forces a new PostgreSQL Flexible Server to be created.
  final pulumi.Input<bool>? geoRedundantBackupEnabled;
  /// A `high_availability` block as defined below.
  final pulumi.Input<FlexibleServerHighAvailability>? highAvailability;
  /// An `identity` block as defined below.
  final pulumi.Input<FlexibleServerIdentity>? identity;
  /// The Azure Region where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created.
  final pulumi.Input<String>? location;
  /// A `maintenance_window` block as defined below.
  final pulumi.Input<FlexibleServerMaintenanceWindow>? maintenanceWindow;
  /// The name which should be used for this PostgreSQL Flexible Server. Changing this forces a new PostgreSQL Flexible Server to be created.
  ///
  /// &gt; **Note:** This must be unique across the entire Azure service, not just within the resource group.
  final pulumi.Input<String>? name;
  /// The point in time to restore from `source_server_id` when `create_mode` is `GeoRestore`, `PointInTimeRestore`. Changing this forces a new PostgreSQL Flexible Server to be created.
  final pulumi.Input<String>? pointInTimeRestoreTimeInUtc;
  /// The ID of the private DNS zone to create the PostgreSQL Flexible Server.
  ///
  /// &gt; **Note:** There will be a breaking change from upstream service at 15th July 2021, the `private_dns_zone_id` will be required when setting a `delegated_subnet_id`. For existing flexible servers who don't want to be recreated, you need to provide the `private_dns_zone_id` to the service team to manually migrate to the specified private DNS zone. The `azure.privatedns.Zone` should end with suffix `.postgres.database.azure.com`.
  final pulumi.Input<String>? privateDnsZoneId;
  /// Specifies whether this PostgreSQL Flexible Server is publicly accessible. Defaults to `true`.
  ///
  /// &gt; **Note:** `public_network_access_enabled` must be set to `false` when `delegated_subnet_id` and `private_dns_zone_id` have a value.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The replication role for the PostgreSQL Flexible Server. Possible value is `None`.
  ///
  /// &gt; **Note:** The `replication_role` cannot be set while creating and only can be updated to `None` for replica server.
  final pulumi.Input<String>? replicationRole;
  /// The name of the Resource Group where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The SKU Name for the PostgreSQL Flexible Server. The name of the SKU, follows the `tier` + `name` pattern (e.g. `B_Standard_B1ms`, `GP_Standard_D2s_v3`, `MO_Standard_E4s_v3`).
  final pulumi.Input<String>? skuName;
  /// The resource ID of the source PostgreSQL Flexible Server to be restored. Required when `create_mode` is `GeoRestore`, `PointInTimeRestore` or `Replica`. Changing this forces a new PostgreSQL Flexible Server to be created.
  final pulumi.Input<String>? sourceServerId;
  /// The max storage allowed for the PostgreSQL Flexible Server. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4193280`, `4194304`, `8388608`, `16777216` and `33553408`.
  ///
  /// &gt; **Note:** If the `storage_mb` field is undefined on the initial deployment of the PostgreSQL Flexible Server resource it will default to `32768`. If the `storage_mb` field has been defined and then removed, the `storage_mb` field will retain the previously defined value.
  ///
  /// &gt; **Note:** The `storage_mb` can only be scaled up, for example, you can scale the `storage_mb` from `32768` to `65536`, but not from `65536` to `32768`. Scaling down `storage_mb` forces a new PostgreSQL Flexible Server to be created.
  final pulumi.Input<int>? storageMb;
  /// The name of storage performance tier for IOPS of the PostgreSQL Flexible Server. Possible values are `P4`, `P6`, `P10`, `P15`,`P20`, `P30`,`P40`, `P50`,`P60`, `P70` or `P80`. Default value is dependent on the `storage_mb` value. Please see the `storage_tier` defaults based on `storage_mb` table below.
  ///
  /// &gt; **Note:** The `storage_tier` can be scaled once every 12 hours, this restriction is in place to ensure stability and performance after any changes to your PostgreSQL Flexible Server's configuration.
  final pulumi.Input<String>? storageTier;
  /// A mapping of tags which should be assigned to the PostgreSQL Flexible Server.
  final pulumi.Input<Map<String, String>>? tags;
  /// The version of PostgreSQL Flexible Server to use. Possible values are `11`,`12`, `13`, `14`, `15`, `16`, `17`, and `18`. Required when `create_mode` is `Default`.
  ///
  /// &gt; **Note:** Downgrading `version` isn't supported and will force a new PostgreSQL Flexible Server to be created.
  ///
  /// &gt; **Note:** In-place version updates are irreversible and may cause downtime for the PostgreSQL Flexible Server, determined by the size of the instance.
  ///
  /// &gt; **Note:** Major version upgrades are not supported when `cluster` is specified.
  final pulumi.Input<String>? version;
  /// Specifies the Availability Zone in which the PostgreSQL Flexible Server should be located.
  ///
  /// &gt; **Note:** Azure will automatically assign an Availability Zone if one is not specified. If the PostgreSQL Flexible Server fails-over to the Standby Availability Zone, the `zone` will be updated to reflect the current Primary Availability Zone. You can use Terraform's `ignore_changes` functionality to ignore changes to the `zone` and `high_availability[0].standby_availability_zone` fields should you wish for Terraform to not migrate the PostgreSQL Flexible Server back to it's primary Availability Zone after a fail-over.
  ///
  /// &gt; **Note:** The Availability Zones available depend on the Azure Region that the PostgreSQL Flexible Server is being deployed into - see [the Azure Availability Zones documentation](https://azure.microsoft.com/global-infrastructure/geographies/#geographies) for more information on which Availability Zones are available in each Azure Region.
  final pulumi.Input<String>? zone;

  /// Creates a new [FlexibleServerState].
  /// [administratorLogin] The Administrator login for the PostgreSQL Flexible Server. Required when `create_mode` is `Default` and `authentication.password_auth_enabled` is `true`.
  /// [administratorPassword] The Password associated with the `administrator_login` for the PostgreSQL Flexible Server.
  /// [administratorPasswordWoVersion] An integer value used to trigger an update for `administrator_password_wo`. This property should be incremented when updating `administrator_password_wo`.
  /// [authentication] An `authentication` block as defined below.
  /// [autoGrowEnabled] Is the storage auto grow for PostgreSQL Flexible Server enabled? Defaults to `false`.
  /// [backupRetentionDays] The backup retention days for the PostgreSQL Flexible Server. Possible values are between `7` and `35` days.
  /// [cluster] A `cluster` block as defined below.
  /// [createMode] The creation mode which can be used to restore or replicate existing servers. Possible values are `Default`, `GeoRestore`, `PointInTimeRestore`, `Replica`, `ReviveDropped` and `Update`.
  /// [customerManagedKey] A `customer_managed_key` block as defined below. Changing this forces a new resource to be created.
  /// [delegatedSubnetId] The ID of the virtual network subnet to create the PostgreSQL Flexible Server. The provided subnet should not have any other resource deployed in it and this subnet will be delegated to the PostgreSQL Flexible Server, if not already delegated. Changing this forces a new PostgreSQL Flexible Server to be created.
  /// [fqdn] The FQDN of the PostgreSQL Flexible Server.
  /// [geoRedundantBackupEnabled] Is Geo-Redundant backup enabled on the PostgreSQL Flexible Server. Defaults to `false`. Changing this forces a new PostgreSQL Flexible Server to be created.
  /// [highAvailability] A `high_availability` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created.
  /// [maintenanceWindow] A `maintenance_window` block as defined below.
  /// [name] The name which should be used for this PostgreSQL Flexible Server. Changing this forces a new PostgreSQL Flexible Server to be created.
  /// [pointInTimeRestoreTimeInUtc] The point in time to restore from `source_server_id` when `create_mode` is `GeoRestore`, `PointInTimeRestore`. Changing this forces a new PostgreSQL Flexible Server to be created.
  /// [privateDnsZoneId] The ID of the private DNS zone to create the PostgreSQL Flexible Server.
  /// [publicNetworkAccessEnabled] Specifies whether this PostgreSQL Flexible Server is publicly accessible. Defaults to `true`.
  /// [replicationRole] The replication role for the PostgreSQL Flexible Server. Possible value is `None`.
  /// [resourceGroupName] The name of the Resource Group where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created.
  /// [skuName] The SKU Name for the PostgreSQL Flexible Server. The name of the SKU, follows the `tier` + `name` pattern (e.g. `B_Standard_B1ms`, `GP_Standard_D2s_v3`, `MO_Standard_E4s_v3`).
  /// [sourceServerId] The resource ID of the source PostgreSQL Flexible Server to be restored. Required when `create_mode` is `GeoRestore`, `PointInTimeRestore` or `Replica`. Changing this forces a new PostgreSQL Flexible Server to be created.
  /// [storageMb] The max storage allowed for the PostgreSQL Flexible Server. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4193280`, `4194304`, `8388608`, `16777216` and `33553408`.
  /// [storageTier] The name of storage performance tier for IOPS of the PostgreSQL Flexible Server. Possible values are `P4`, `P6`, `P10`, `P15`,`P20`, `P30`,`P40`, `P50`,`P60`, `P70` or `P80`. Default value is dependent on the `storage_mb` value. Please see the `storage_tier` defaults based on `storage_mb` table below.
  /// [tags] A mapping of tags which should be assigned to the PostgreSQL Flexible Server.
  /// [version] The version of PostgreSQL Flexible Server to use. Possible values are `11`,`12`, `13`, `14`, `15`, `16`, `17`, and `18`. Required when `create_mode` is `Default`.
  /// [zone] Specifies the Availability Zone in which the PostgreSQL Flexible Server should be located.
  const FlexibleServerState({
    this.administratorLogin,
    this.administratorPassword,
    this.administratorPasswordWoVersion,
    this.authentication,
    this.autoGrowEnabled,
    this.backupRetentionDays,
    this.cluster,
    this.createMode,
    this.customerManagedKey,
    this.delegatedSubnetId,
    this.fqdn,
    this.geoRedundantBackupEnabled,
    this.highAvailability,
    this.identity,
    this.location,
    this.maintenanceWindow,
    this.name,
    this.pointInTimeRestoreTimeInUtc,
    this.privateDnsZoneId,
    this.publicNetworkAccessEnabled,
    this.replicationRole,
    this.resourceGroupName,
    this.skuName,
    this.sourceServerId,
    this.storageMb,
    this.storageTier,
    this.tags,
    this.version,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'administratorPassword': ?administratorPassword,
      'administratorPasswordWoVersion': ?administratorPasswordWoVersion,
      'authentication': ?pulumi.Input.mapOptionalInputValue<FlexibleServerAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'autoGrowEnabled': ?autoGrowEnabled,
      'backupRetentionDays': ?backupRetentionDays,
      'cluster': ?pulumi.Input.mapOptionalInputValue<FlexibleServerCluster, Map<String, dynamic>>(cluster, (value) => value.toMap()),
      'createMode': ?createMode,
      'customerManagedKey': ?pulumi.Input.mapOptionalInputValue<FlexibleServerCustomerManagedKey, Map<String, dynamic>>(customerManagedKey, (value) => value.toMap()),
      'delegatedSubnetId': ?delegatedSubnetId,
      'fqdn': ?fqdn,
      'geoRedundantBackupEnabled': ?geoRedundantBackupEnabled,
      'highAvailability': ?pulumi.Input.mapOptionalInputValue<FlexibleServerHighAvailability, Map<String, dynamic>>(highAvailability, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<FlexibleServerIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<FlexibleServerMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'name': ?name,
      'pointInTimeRestoreTimeInUtc': ?pointInTimeRestoreTimeInUtc,
      'privateDnsZoneId': ?privateDnsZoneId,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'replicationRole': ?replicationRole,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'sourceServerId': ?sourceServerId,
      'storageMb': ?storageMb,
      'storageTier': ?storageTier,
      'tags': ?tags,
      'version': ?version,
      'zone': ?zone,
    };
  }

  factory FlexibleServerState.fromMap(Map<String, dynamic> map) {
    return FlexibleServerState(
      administratorLogin: (() { final guardedValue = map['administratorLogin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      administratorPassword: (() { final guardedValue = map['administratorPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      administratorPasswordWoVersion: (() { final guardedValue = map['administratorPasswordWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleServerAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoGrowEnabled: (() { final guardedValue = map['autoGrowEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      backupRetentionDays: (() { final guardedValue = map['backupRetentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleServerCluster.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerManagedKey: (() { final guardedValue = map['customerManagedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleServerCustomerManagedKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      delegatedSubnetId: (() { final guardedValue = map['delegatedSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      geoRedundantBackupEnabled: (() { final guardedValue = map['geoRedundantBackupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      highAvailability: (() { final guardedValue = map['highAvailability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleServerHighAvailability.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleServerIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleServerMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pointInTimeRestoreTimeInUtc: (() { final guardedValue = map['pointInTimeRestoreTimeInUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateDnsZoneId: (() { final guardedValue = map['privateDnsZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      replicationRole: (() { final guardedValue = map['replicationRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceServerId: (() { final guardedValue = map['sourceServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageMb: (() { final guardedValue = map['storageMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageTier: (() { final guardedValue = map['storageTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

