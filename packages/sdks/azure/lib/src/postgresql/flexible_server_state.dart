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
  /// > **Note:** Once `administrator_login` is specified, changing this forces a new PostgreSQL Flexible Server to be created.
  ///
  /// > **Note:** To create with `administrator_login` specified or update with it first specified , `authentication.password_auth_enabled` must be set to `true`.
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
  /// > **Note:** This must be unique across the entire Azure service, not just within the resource group.
  final pulumi.Input<String>? name;
  /// The point in time to restore from `source_server_id` when `create_mode` is `GeoRestore`, `PointInTimeRestore`. Changing this forces a new PostgreSQL Flexible Server to be created.
  final pulumi.Input<String>? pointInTimeRestoreTimeInUtc;
  /// The ID of the private DNS zone to create the PostgreSQL Flexible Server.
  ///
  /// > **Note:** There will be a breaking change from upstream service at 15th July 2021, the `private_dns_zone_id` will be required when setting a `delegated_subnet_id`. For existing flexible servers who don't want to be recreated, you need to provide the `private_dns_zone_id` to the service team to manually migrate to the specified private DNS zone. The `azure.privatedns.Zone` should end with suffix `.postgres.database.azure.com`.
  final pulumi.Input<String>? privateDnsZoneId;
  /// Specifies whether this PostgreSQL Flexible Server is publicly accessible. Defaults to `true`.
  ///
  /// > **Note:** `public_network_access_enabled` must be set to `false` when `delegated_subnet_id` and `private_dns_zone_id` have a value.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The replication role for the PostgreSQL Flexible Server. Possible value is `None`.
  ///
  /// > **Note:** The `replication_role` cannot be set while creating and only can be updated to `None` for replica server.
  final pulumi.Input<String>? replicationRole;
  /// The name of the Resource Group where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The SKU Name for the PostgreSQL Flexible Server. The name of the SKU, follows the `tier` + `name` pattern (e.g. `B_Standard_B1ms`, `GP_Standard_D2s_v3`, `MO_Standard_E4s_v3`).
  final pulumi.Input<String>? skuName;
  /// The resource ID of the source PostgreSQL Flexible Server to be restored. Required when `create_mode` is `GeoRestore`, `PointInTimeRestore` or `Replica`. Changing this forces a new PostgreSQL Flexible Server to be created.
  final pulumi.Input<String>? sourceServerId;
  /// The max storage allowed for the PostgreSQL Flexible Server. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4193280`, `4194304`, `8388608`, `16777216` and `33553408`.
  ///
  /// > **Note:** If the `storage_mb` field is undefined on the initial deployment of the PostgreSQL Flexible Server resource it will default to `32768`. If the `storage_mb` field has been defined and then removed, the `storage_mb` field will retain the previously defined value.
  ///
  /// > **Note:** The `storage_mb` can only be scaled up, for example, you can scale the `storage_mb` from `32768` to `65536`, but not from `65536` to `32768`. Scaling down `storage_mb` forces a new PostgreSQL Flexible Server to be created.
  final pulumi.Input<int>? storageMb;
  /// The name of storage performance tier for IOPS of the PostgreSQL Flexible Server. Possible values are `P4`, `P6`, `P10`, `P15`,`P20`, `P30`,`P40`, `P50`,`P60`, `P70` or `P80`. Default value is dependent on the `storage_mb` value. Please see the `storage_tier` defaults based on `storage_mb` table below.
  ///
  /// > **Note:** The `storage_tier` can be scaled once every 12 hours, this restriction is in place to ensure stability and performance after any changes to your PostgreSQL Flexible Server's configuration.
  final pulumi.Input<String>? storageTier;
  /// A mapping of tags which should be assigned to the PostgreSQL Flexible Server.
  final pulumi.Input<Map<String, String>>? tags;
  /// The version of PostgreSQL Flexible Server to use. Possible values are `11`,`12`, `13`, `14`, `15`, `16`, `17`, and `18`. Required when `create_mode` is `Default`.
  ///
  /// > **Note:** Downgrading `version` isn't supported and will force a new PostgreSQL Flexible Server to be created.
  ///
  /// > **Note:** In-place version updates are irreversible and may cause downtime for the PostgreSQL Flexible Server, determined by the size of the instance.
  ///
  /// > **Note:** Major version upgrades are not supported when `cluster` is specified.
  final pulumi.Input<String>? version;
  /// Specifies the Availability Zone in which the PostgreSQL Flexible Server should be located.
  ///
  /// > **Note:** Azure will automatically assign an Availability Zone if one is not specified. If the PostgreSQL Flexible Server fails-over to the Standby Availability Zone, the `zone` will be updated to reflect the current Primary Availability Zone. You can use Terraform's `ignore_changes` functionality to ignore changes to the `zone` and `high_availability[0].standby_availability_zone` fields should you wish for Terraform to not migrate the PostgreSQL Flexible Server back to it's primary Availability Zone after a fail-over.
  ///
  /// > **Note:** The Availability Zones available depend on the Azure Region that the PostgreSQL Flexible Server is being deployed into - see [the Azure Availability Zones documentation](https://azure.microsoft.com/global-infrastructure/geographies/#geographies) for more information on which Availability Zones are available in each Azure Region.
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
  FlexibleServerState({
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
      administratorLogin: map['administratorLogin'] == null ? null : (map['administratorLogin']! as String).input(),
      administratorPassword: map['administratorPassword'] == null ? null : (map['administratorPassword']! as String).input(),
      administratorPasswordWoVersion: map['administratorPasswordWoVersion'] == null ? null : (map['administratorPasswordWoVersion']! as int).input(),
      authentication: map['authentication'] == null ? null : (FlexibleServerAuthentication.fromMap((map['authentication']! as Map).cast<String, dynamic>())).input(),
      autoGrowEnabled: map['autoGrowEnabled'] == null ? null : (map['autoGrowEnabled']! as bool).input(),
      backupRetentionDays: map['backupRetentionDays'] == null ? null : (map['backupRetentionDays']! as int).input(),
      cluster: map['cluster'] == null ? null : (FlexibleServerCluster.fromMap((map['cluster']! as Map).cast<String, dynamic>())).input(),
      createMode: map['createMode'] == null ? null : (map['createMode']! as String).input(),
      customerManagedKey: map['customerManagedKey'] == null ? null : (FlexibleServerCustomerManagedKey.fromMap((map['customerManagedKey']! as Map).cast<String, dynamic>())).input(),
      delegatedSubnetId: map['delegatedSubnetId'] == null ? null : (map['delegatedSubnetId']! as String).input(),
      fqdn: map['fqdn'] == null ? null : (map['fqdn']! as String).input(),
      geoRedundantBackupEnabled: map['geoRedundantBackupEnabled'] == null ? null : (map['geoRedundantBackupEnabled']! as bool).input(),
      highAvailability: map['highAvailability'] == null ? null : (FlexibleServerHighAvailability.fromMap((map['highAvailability']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (FlexibleServerIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : (FlexibleServerMaintenanceWindow.fromMap((map['maintenanceWindow']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      pointInTimeRestoreTimeInUtc: map['pointInTimeRestoreTimeInUtc'] == null ? null : (map['pointInTimeRestoreTimeInUtc']! as String).input(),
      privateDnsZoneId: map['privateDnsZoneId'] == null ? null : (map['privateDnsZoneId']! as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      replicationRole: map['replicationRole'] == null ? null : (map['replicationRole']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      skuName: map['skuName'] == null ? null : (map['skuName']! as String).input(),
      sourceServerId: map['sourceServerId'] == null ? null : (map['sourceServerId']! as String).input(),
      storageMb: map['storageMb'] == null ? null : (map['storageMb']! as int).input(),
      storageTier: map['storageTier'] == null ? null : (map['storageTier']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

