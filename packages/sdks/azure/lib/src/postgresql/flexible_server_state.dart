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
    pulumi.Output<String>? administratorLogin,
    pulumi.Output<String>? administratorPassword,
    pulumi.Output<int>? administratorPasswordWoVersion,
    pulumi.Output<FlexibleServerAuthentication>? authentication,
    pulumi.Output<bool>? autoGrowEnabled,
    pulumi.Output<int>? backupRetentionDays,
    pulumi.Output<FlexibleServerCluster>? cluster,
    pulumi.Output<String>? createMode,
    pulumi.Output<FlexibleServerCustomerManagedKey>? customerManagedKey,
    pulumi.Output<String>? delegatedSubnetId,
    pulumi.Output<String>? fqdn,
    pulumi.Output<bool>? geoRedundantBackupEnabled,
    pulumi.Output<FlexibleServerHighAvailability>? highAvailability,
    pulumi.Output<FlexibleServerIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<FlexibleServerMaintenanceWindow>? maintenanceWindow,
    pulumi.Output<String>? name,
    pulumi.Output<String>? pointInTimeRestoreTimeInUtc,
    pulumi.Output<String>? privateDnsZoneId,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? replicationRole,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? skuName,
    pulumi.Output<String>? sourceServerId,
    pulumi.Output<int>? storageMb,
    pulumi.Output<String>? storageTier,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
    pulumi.Output<String>? zone,
  }) :
      administratorLogin = pulumi.Input.asOptionalInput<String>(administratorLogin),
      administratorPassword = pulumi.Input.asOptionalInput<String>(administratorPassword),
      administratorPasswordWoVersion = pulumi.Input.asOptionalInput<int>(administratorPasswordWoVersion),
      authentication = pulumi.Input.asOptionalInput<FlexibleServerAuthentication>(authentication),
      autoGrowEnabled = pulumi.Input.asOptionalInput<bool>(autoGrowEnabled),
      backupRetentionDays = pulumi.Input.asOptionalInput<int>(backupRetentionDays),
      cluster = pulumi.Input.asOptionalInput<FlexibleServerCluster>(cluster),
      createMode = pulumi.Input.asOptionalInput<String>(createMode),
      customerManagedKey = pulumi.Input.asOptionalInput<FlexibleServerCustomerManagedKey>(customerManagedKey),
      delegatedSubnetId = pulumi.Input.asOptionalInput<String>(delegatedSubnetId),
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      geoRedundantBackupEnabled = pulumi.Input.asOptionalInput<bool>(geoRedundantBackupEnabled),
      highAvailability = pulumi.Input.asOptionalInput<FlexibleServerHighAvailability>(highAvailability),
      identity = pulumi.Input.asOptionalInput<FlexibleServerIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceWindow = pulumi.Input.asOptionalInput<FlexibleServerMaintenanceWindow>(maintenanceWindow),
      name = pulumi.Input.asOptionalInput<String>(name),
      pointInTimeRestoreTimeInUtc = pulumi.Input.asOptionalInput<String>(pointInTimeRestoreTimeInUtc),
      privateDnsZoneId = pulumi.Input.asOptionalInput<String>(privateDnsZoneId),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      replicationRole = pulumi.Input.asOptionalInput<String>(replicationRole),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      sourceServerId = pulumi.Input.asOptionalInput<String>(sourceServerId),
      storageMb = pulumi.Input.asOptionalInput<int>(storageMb),
      storageTier = pulumi.Input.asOptionalInput<String>(storageTier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version),
      zone = pulumi.Input.asOptionalInput<String>(zone);

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
      administratorLogin: map['administratorLogin'] == null ? null : pulumi.Output.create<String>(map['administratorLogin'] as String),
      administratorPassword: map['administratorPassword'] == null ? null : pulumi.Output.create<String>(map['administratorPassword'] as String),
      administratorPasswordWoVersion: map['administratorPasswordWoVersion'] == null ? null : pulumi.Output.create<int>(map['administratorPasswordWoVersion'] as int),
      authentication: map['authentication'] == null ? null : pulumi.Output.create<FlexibleServerAuthentication>(FlexibleServerAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>())),
      autoGrowEnabled: map['autoGrowEnabled'] == null ? null : pulumi.Output.create<bool>(map['autoGrowEnabled'] as bool),
      backupRetentionDays: map['backupRetentionDays'] == null ? null : pulumi.Output.create<int>(map['backupRetentionDays'] as int),
      cluster: map['cluster'] == null ? null : pulumi.Output.create<FlexibleServerCluster>(FlexibleServerCluster.fromMap((map['cluster'] as Map).cast<String, dynamic>())),
      createMode: map['createMode'] == null ? null : pulumi.Output.create<String>(map['createMode'] as String),
      customerManagedKey: map['customerManagedKey'] == null ? null : pulumi.Output.create<FlexibleServerCustomerManagedKey>(FlexibleServerCustomerManagedKey.fromMap((map['customerManagedKey'] as Map).cast<String, dynamic>())),
      delegatedSubnetId: map['delegatedSubnetId'] == null ? null : pulumi.Output.create<String>(map['delegatedSubnetId'] as String),
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      geoRedundantBackupEnabled: map['geoRedundantBackupEnabled'] == null ? null : pulumi.Output.create<bool>(map['geoRedundantBackupEnabled'] as bool),
      highAvailability: map['highAvailability'] == null ? null : pulumi.Output.create<FlexibleServerHighAvailability>(FlexibleServerHighAvailability.fromMap((map['highAvailability'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<FlexibleServerIdentity>(FlexibleServerIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : pulumi.Output.create<FlexibleServerMaintenanceWindow>(FlexibleServerMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pointInTimeRestoreTimeInUtc: map['pointInTimeRestoreTimeInUtc'] == null ? null : pulumi.Output.create<String>(map['pointInTimeRestoreTimeInUtc'] as String),
      privateDnsZoneId: map['privateDnsZoneId'] == null ? null : pulumi.Output.create<String>(map['privateDnsZoneId'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      replicationRole: map['replicationRole'] == null ? null : pulumi.Output.create<String>(map['replicationRole'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      sourceServerId: map['sourceServerId'] == null ? null : pulumi.Output.create<String>(map['sourceServerId'] as String),
      storageMb: map['storageMb'] == null ? null : pulumi.Output.create<int>(map['storageMb'] as int),
      storageTier: map['storageTier'] == null ? null : pulumi.Output.create<String>(map['storageTier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

