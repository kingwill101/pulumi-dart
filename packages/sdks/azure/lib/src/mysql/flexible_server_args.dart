// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_server_customer_managed_key.dart';
import 'flexible_server_high_availability.dart';
import 'flexible_server_identity.dart';
import 'flexible_server_maintenance_window.dart';
import 'flexible_server_storage.dart';

/// {@template pulumi_mysql_flexible_server_flexible_server_args_doc}
/// The set of arguments for FlexibleServer.
/// {@endtemplate}
/// {@macro pulumi_mysql_flexible_server_flexible_server_args_doc}
class FlexibleServerArgs {
  /// The Administrator login for the MySQL Flexible Server. Required when `createMode` is `Default`. Changing this forces a new MySQL Flexible Server to be created.
  final pulumi.Input<String>? administratorLogin;
  /// The Password associated with the `administratorLogin` for the MySQL Flexible Server.
  final pulumi.Input<String>? administratorPassword;
  /// An integer value used to trigger an update for `administratorPasswordWo`. This property should be incremented when updating `administratorPasswordWo`.
  ///
  /// &gt; **Note:** Either `administratorPassword` or `administratorPasswordWo` is required when `createMode` is `Default`.
  final pulumi.Input<int>? administratorPasswordWoVersion;
  /// The backup retention days for the MySQL Flexible Server. Possible values are between `1` and `35` days. Defaults to `7`.
  final pulumi.Input<int>? backupRetentionDays;
  /// The creation mode which can be used to restore or replicate existing servers. Possible values are `Default`, `PointInTimeRestore`, `GeoRestore`, and `Replica`. Changing this forces a new MySQL Flexible Server to be created.
  ///
  /// &gt; **Note:** Creating a `GeoRestore` server requires the source server with `geoRedundantBackupEnabled` enabled.
  ///
  /// &gt; **Note:** When a server is first created it may not be immediately available for `geo restore` or `replica`. It may take a few minutes to several hours for the necessary metadata to be populated. Please see the [Geo Restore](https://learn.microsoft.com/azure/mysql/single-server/how-to-restore-server-portal#geo-restore) and the [Replica](https://learn.microsoft.com/azure/mysql/flexible-server/concepts-read-replicas#create-a-replica) for more information.
  ///
  /// &gt; **Note:** When importing a MySQL Flexible Server, `createMode` is not returned by the api so you will see a diff if `createMode` is specified in your config. To prevent recreation, use the `ignoreChanges` lifecycle meta-argument.
  final pulumi.Input<String>? createMode;
  /// A `customerManagedKey` block as defined below.
  ///
  /// &gt; **Note:** `identity` is required when `customerManagedKey` is specified.
  final pulumi.Input<FlexibleServerCustomerManagedKey>? customerManagedKey;
  /// The ID of the virtual network subnet to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created.
  final pulumi.Input<String>? delegatedSubnetId;
  /// Should geo redundant backup enabled? Defaults to `false`. Changing this forces a new MySQL Flexible Server to be created.
  final pulumi.Input<bool>? geoRedundantBackupEnabled;
  /// A `highAvailability` block as defined below.
  final pulumi.Input<FlexibleServerHighAvailability>? highAvailability;
  /// An `identity` block as defined below.
  final pulumi.Input<FlexibleServerIdentity>? identity;
  /// The Azure Region where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created.
  final pulumi.Input<String>? location;
  /// A `maintenanceWindow` block as defined below.
  final pulumi.Input<FlexibleServerMaintenanceWindow>? maintenanceWindow;
  /// The name which should be used for this MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created.
  final pulumi.Input<String>? name;
  /// The point in time to restore from `creationSourceServerId` when `createMode` is `PointInTimeRestore`. Changing this forces a new MySQL Flexible Server to be created.
  final pulumi.Input<String>? pointInTimeRestoreTimeInUtc;
  /// The ID of the private DNS zone to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created.
  ///
  /// &gt; **Note:** The `privateDnsZoneId` is required when setting a `delegatedSubnetId`. The `azure.privatedns.Zone` should end with suffix `.mysql.database.azure.com`.
  final pulumi.Input<String>? privateDnsZoneId;
  /// Whether approved public traffic is allowed through the firewall to this server. Possible values are `Enabled` and `Disabled`.
  ///
  /// &gt; **Note:** `publicNetworkAccess` is automatically set to `Disabled` if the server is created with VNet Integration (i.e. values are provided for `delegatedSubnetId` and `privateDnsZoneId`").
  final pulumi.Input<String>? publicNetworkAccess;
  /// The replication role. Possible value is `None`.
  ///
  /// &gt; **Note:** The `replicationRole` cannot be set while creating and only can be updated from `Replica` to `None`.
  final pulumi.Input<String>? replicationRole;
  /// The name of the Resource Group where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU Name for the MySQL Flexible Server.
  ///
  /// &gt; **Note:** `skuName` should start with SKU tier `B (Burstable)`, `GP (General Purpose)`, `MO (Memory Optimized)` like `B_Standard_B1ms`.
  final pulumi.Input<String>? skuName;
  /// The resource ID of the source MySQL Flexible Server to be restored. Required when `createMode` is `PointInTimeRestore`, `GeoRestore`, and `Replica`. Changing this forces a new MySQL Flexible Server to be created.
  ///
  /// &gt; **Note:** The replica server is always created in the same resource group and subscription as the source server.
  final pulumi.Input<String>? sourceServerId;
  /// A `storage` block as defined below.
  final pulumi.Input<FlexibleServerStorage>? storage;
  /// A mapping of tags which should be assigned to the MySQL Flexible Server.
  final pulumi.Input<Map<String, String>>? tags;
  /// The version of the MySQL Flexible Server to use. Possible values are `5.7`, `8.0.21` and `8.4`.
  final pulumi.Input<String>? version;
  /// Specifies the Availability Zone in which this MySQL Flexible Server should be located. Possible values are `1`, `2` and `3`.
  ///
  /// &gt; **Note:** Azure will automatically assign an Availability Zone if one is not specified. If the MySQL Flexible Server fails-over to the Standby Availability Zone, the `zone` will be updated to reflect the current Primary Availability Zone. You can use Terraform's `ignoreChanges` functionality to ignore changes to the `zone` and `high_availability[0].standby_availability_zone` fields should you wish for Terraform to not migrate the MySQL Flexible Server back to it's primary Availability Zone after a fail-over.
  ///
  /// &gt; **Note:** The Availability Zones available depend on the Azure Region that the MySQL Flexible Server is being deployed into - see [the Azure Availability Zones documentation](https://azure.microsoft.com/global-infrastructure/geographies/#geographies) for more information on which Availability Zones are available in each Azure Region.
  final pulumi.Input<String>? zone;

  /// Creates a new [FlexibleServerArgs].
  /// [administratorLogin] The Administrator login for the MySQL Flexible Server. Required when `createMode` is `Default`. Changing this forces a new MySQL Flexible Server to be created.
  /// [administratorPassword] The Password associated with the `administratorLogin` for the MySQL Flexible Server.
  /// [administratorPasswordWoVersion] An integer value used to trigger an update for `administratorPasswordWo`. This property should be incremented when updating `administratorPasswordWo`.
  /// [backupRetentionDays] The backup retention days for the MySQL Flexible Server. Possible values are between `1` and `35` days. Defaults to `7`.
  /// [createMode] The creation mode which can be used to restore or replicate existing servers. Possible values are `Default`, `PointInTimeRestore`, `GeoRestore`, and `Replica`. Changing this forces a new MySQL Flexible Server to be created.
  /// [customerManagedKey] A `customerManagedKey` block as defined below.
  /// [delegatedSubnetId] The ID of the virtual network subnet to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created.
  /// [geoRedundantBackupEnabled] Should geo redundant backup enabled? Defaults to `false`. Changing this forces a new MySQL Flexible Server to be created.
  /// [highAvailability] A `highAvailability` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created.
  /// [maintenanceWindow] A `maintenanceWindow` block as defined below.
  /// [name] The name which should be used for this MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created.
  /// [pointInTimeRestoreTimeInUtc] The point in time to restore from `creationSourceServerId` when `createMode` is `PointInTimeRestore`. Changing this forces a new MySQL Flexible Server to be created.
  /// [privateDnsZoneId] The ID of the private DNS zone to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created.
  /// [publicNetworkAccess] Whether approved public traffic is allowed through the firewall to this server. Possible values are `Enabled` and `Disabled`.
  /// [replicationRole] The replication role. Possible value is `None`.
  /// [resourceGroupName] The name of the Resource Group where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created.
  /// [skuName] The SKU Name for the MySQL Flexible Server.
  /// [sourceServerId] The resource ID of the source MySQL Flexible Server to be restored. Required when `createMode` is `PointInTimeRestore`, `GeoRestore`, and `Replica`. Changing this forces a new MySQL Flexible Server to be created.
  /// [storage] A `storage` block as defined below.
  /// [tags] A mapping of tags which should be assigned to the MySQL Flexible Server.
  /// [version] The version of the MySQL Flexible Server to use. Possible values are `5.7`, `8.0.21` and `8.4`.
  /// [zone] Specifies the Availability Zone in which this MySQL Flexible Server should be located. Possible values are `1`, `2` and `3`.
  const FlexibleServerArgs({
    this.administratorLogin,
    this.administratorPassword,
    this.administratorPasswordWoVersion,
    this.backupRetentionDays,
    this.createMode,
    this.customerManagedKey,
    this.delegatedSubnetId,
    this.geoRedundantBackupEnabled,
    this.highAvailability,
    this.identity,
    this.location,
    this.maintenanceWindow,
    this.name,
    this.pointInTimeRestoreTimeInUtc,
    this.privateDnsZoneId,
    this.publicNetworkAccess,
    this.replicationRole,
    required this.resourceGroupName,
    this.skuName,
    this.sourceServerId,
    this.storage,
    this.tags,
    this.version,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'administratorPassword': ?administratorPassword,
      'administratorPasswordWoVersion': ?administratorPasswordWoVersion,
      'backupRetentionDays': ?backupRetentionDays,
      'createMode': ?createMode,
      'customerManagedKey': ?pulumi.Input.mapOptionalInputValue<FlexibleServerCustomerManagedKey, Map<String, dynamic>>(customerManagedKey, (value) => value.toMap()),
      'delegatedSubnetId': ?delegatedSubnetId,
      'geoRedundantBackupEnabled': ?geoRedundantBackupEnabled,
      'highAvailability': ?pulumi.Input.mapOptionalInputValue<FlexibleServerHighAvailability, Map<String, dynamic>>(highAvailability, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<FlexibleServerIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<FlexibleServerMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'name': ?name,
      'pointInTimeRestoreTimeInUtc': ?pointInTimeRestoreTimeInUtc,
      'privateDnsZoneId': ?privateDnsZoneId,
      'publicNetworkAccess': ?publicNetworkAccess,
      'replicationRole': ?replicationRole,
      'resourceGroupName': resourceGroupName,
      'skuName': ?skuName,
      'sourceServerId': ?sourceServerId,
      'storage': ?pulumi.Input.mapOptionalInputValue<FlexibleServerStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'tags': ?tags,
      'version': ?version,
      'zone': ?zone,
    };
  }

  factory FlexibleServerArgs.fromMap(Map<String, dynamic> map) {
    return FlexibleServerArgs(
      administratorLogin: (() { final guardedValue = map['administratorLogin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      administratorPassword: (() { final guardedValue = map['administratorPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      administratorPasswordWoVersion: (() { final guardedValue = map['administratorPasswordWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      backupRetentionDays: (() { final guardedValue = map['backupRetentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerManagedKey: (() { final guardedValue = map['customerManagedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleServerCustomerManagedKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      delegatedSubnetId: (() { final guardedValue = map['delegatedSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      geoRedundantBackupEnabled: (() { final guardedValue = map['geoRedundantBackupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      highAvailability: (() { final guardedValue = map['highAvailability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleServerHighAvailability.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleServerIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleServerMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pointInTimeRestoreTimeInUtc: (() { final guardedValue = map['pointInTimeRestoreTimeInUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateDnsZoneId: (() { final guardedValue = map['privateDnsZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationRole: (() { final guardedValue = map['replicationRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceServerId: (() { final guardedValue = map['sourceServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexibleServerStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
