// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_flexible_server_high_availability.dart';
import 'get_flexible_server_maintenance_window.dart';
import 'get_flexible_server_storage.dart';

/// Result data returned by getFlexibleServer.
class GetFlexibleServerResult {
  /// The Administrator login of the MySQL Flexible Server.
  final String administratorLogin;

  /// The backup retention days of the MySQL Flexible Server.
  final int backupRetentionDays;

  /// The ID of the virtual network subnet the MySQL Flexible Server is created in.
  final String delegatedSubnetId;

  /// The fully qualified domain name of the MySQL Flexible Server.
  final String fqdn;

  /// Is geo redundant backup enabled?
  final bool geoRedundantBackupEnabled;

  /// A `high_availability` block for this MySQL Flexible Server as defined below.
  final List<GetFlexibleServerHighAvailability> highAvailabilities;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Azure Region of the MySQL Flexible Server.
  final String location;

  /// A `maintenance_window` block for this MySQL Flexible Server as defined below.
  final List<GetFlexibleServerMaintenanceWindow> maintenanceWindows;
  final String name;

  /// The ID of the Private DNS zone of the MySQL Flexible Server.
  final String privateDnsZoneId;

  /// Is the public network access enabled?
  final bool publicNetworkAccessEnabled;

  /// The maximum number of replicas that a primary MySQL Flexible Server can have.
  final int replicaCapacity;

  /// The replication role of the MySQL Flexible Server.
  final String replicationRole;
  final String resourceGroupName;
  final String restorePointInTime;

  /// The SKU Name of the MySQL Flexible Server.
  final String skuName;

  /// A `storage` block for this MySQL Flexible Server as defined below.
  final List<GetFlexibleServerStorage> storages;

  /// A mapping of tags which are assigned to the MySQL Flexible Server.
  final Map<String, String> tags;

  /// The version of the MySQL Flexible Server.
  final String version;

  /// The Availability Zones where this MySQL Flexible Server is located.
  final String zone;

  /// Creates a new [GetFlexibleServerResult].
  /// [administratorLogin] The Administrator login of the MySQL Flexible Server.
  /// [backupRetentionDays] The backup retention days of the MySQL Flexible Server.
  /// [delegatedSubnetId] The ID of the virtual network subnet the MySQL Flexible Server is created in.
  /// [fqdn] The fully qualified domain name of the MySQL Flexible Server.
  /// [geoRedundantBackupEnabled] Is geo redundant backup enabled?
  /// [highAvailabilities] A `high_availability` block for this MySQL Flexible Server as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region of the MySQL Flexible Server.
  /// [maintenanceWindows] A `maintenance_window` block for this MySQL Flexible Server as defined below.
  /// [name] Required.
  /// [privateDnsZoneId] The ID of the Private DNS zone of the MySQL Flexible Server.
  /// [publicNetworkAccessEnabled] Is the public network access enabled?
  /// [replicaCapacity] The maximum number of replicas that a primary MySQL Flexible Server can have.
  /// [replicationRole] The replication role of the MySQL Flexible Server.
  /// [resourceGroupName] Required.
  /// [restorePointInTime] Required.
  /// [skuName] The SKU Name of the MySQL Flexible Server.
  /// [storages] A `storage` block for this MySQL Flexible Server as defined below.
  /// [tags] A mapping of tags which are assigned to the MySQL Flexible Server.
  /// [version] The version of the MySQL Flexible Server.
  /// [zone] The Availability Zones where this MySQL Flexible Server is located.
  GetFlexibleServerResult({
    required this.administratorLogin,
    required this.backupRetentionDays,
    required this.delegatedSubnetId,
    required this.fqdn,
    required this.geoRedundantBackupEnabled,
    required this.highAvailabilities,
    required this.id,
    required this.location,
    required this.maintenanceWindows,
    required this.name,
    required this.privateDnsZoneId,
    required this.publicNetworkAccessEnabled,
    required this.replicaCapacity,
    required this.replicationRole,
    required this.resourceGroupName,
    required this.restorePointInTime,
    required this.skuName,
    required this.storages,
    required this.tags,
    required this.version,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': administratorLogin,
      'backupRetentionDays': backupRetentionDays,
      'delegatedSubnetId': delegatedSubnetId,
      'fqdn': fqdn,
      'geoRedundantBackupEnabled': geoRedundantBackupEnabled,
      'highAvailabilities':
          pulumi.Input.encodeList<
            GetFlexibleServerHighAvailability,
            Map<String, dynamic>
          >(highAvailabilities, (value) => value.toMap()),
      'id': id,
      'location': location,
      'maintenanceWindows':
          pulumi.Input.encodeList<
            GetFlexibleServerMaintenanceWindow,
            Map<String, dynamic>
          >(maintenanceWindows, (value) => value.toMap()),
      'name': name,
      'privateDnsZoneId': privateDnsZoneId,
      'publicNetworkAccessEnabled': publicNetworkAccessEnabled,
      'replicaCapacity': replicaCapacity,
      'replicationRole': replicationRole,
      'resourceGroupName': resourceGroupName,
      'restorePointInTime': restorePointInTime,
      'skuName': skuName,
      'storages':
          pulumi.Input.encodeList<
            GetFlexibleServerStorage,
            Map<String, dynamic>
          >(storages, (value) => value.toMap()),
      'tags': tags,
      'version': version,
      'zone': zone,
    };
  }

  factory GetFlexibleServerResult.fromMap(Map<String, dynamic> map) {
    return GetFlexibleServerResult(
      administratorLogin: map['administratorLogin'] as String,
      backupRetentionDays: map['backupRetentionDays'] as int,
      delegatedSubnetId: map['delegatedSubnetId'] as String,
      fqdn: map['fqdn'] as String,
      geoRedundantBackupEnabled: map['geoRedundantBackupEnabled'] as bool,
      highAvailabilities:
          pulumi.Input.decodeList<GetFlexibleServerHighAvailability>(
            map['highAvailabilities']!,
            (value) => GetFlexibleServerHighAvailability.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      id: map['id'] as String,
      location: map['location'] as String,
      maintenanceWindows:
          pulumi.Input.decodeList<GetFlexibleServerMaintenanceWindow>(
            map['maintenanceWindows']!,
            (value) => GetFlexibleServerMaintenanceWindow.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      name: map['name'] as String,
      privateDnsZoneId: map['privateDnsZoneId'] as String,
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] as bool,
      replicaCapacity: map['replicaCapacity'] as int,
      replicationRole: map['replicationRole'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      restorePointInTime: map['restorePointInTime'] as String,
      skuName: map['skuName'] as String,
      storages: pulumi.Input.decodeList<GetFlexibleServerStorage>(
        map['storages']!,
        (value) => GetFlexibleServerStorage.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      tags: (map['tags'] as Map).cast<String, String>(),
      version: map['version'] as String,
      zone: map['zone'] as String,
    );
  }
}
