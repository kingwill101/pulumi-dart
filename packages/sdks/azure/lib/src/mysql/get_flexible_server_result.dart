// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_flexible_server_high_availability.dart';
import 'get_flexible_server_maintenance_window.dart';
import 'get_flexible_server_storage.dart';

/// Result data returned by getFlexibleServer.
class GetFlexibleServerResult {
  /// The Administrator login of the MySQL Flexible Server.
  final String? administratorLogin;
  /// The backup retention days of the MySQL Flexible Server.
  final int? backupRetentionDays;
  /// The ID of the virtual network subnet the MySQL Flexible Server is created in.
  final String? delegatedSubnetId;
  /// The fully qualified domain name of the MySQL Flexible Server.
  final String? fqdn;
  /// Is geo redundant backup enabled?
  final bool? geoRedundantBackupEnabled;
  /// A `highAvailability` block for this MySQL Flexible Server as defined below.
  final List<GetFlexibleServerHighAvailability>? highAvailabilities;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region of the MySQL Flexible Server.
  final String? location;
  /// A `maintenanceWindow` block for this MySQL Flexible Server as defined below.
  final List<GetFlexibleServerMaintenanceWindow>? maintenanceWindows;
  final String? name;
  /// The ID of the Private DNS zone of the MySQL Flexible Server.
  final String? privateDnsZoneId;
  /// Is the public network access enabled?
  final bool? publicNetworkAccessEnabled;
  /// The maximum number of replicas that a primary MySQL Flexible Server can have.
  final int? replicaCapacity;
  /// The replication role of the MySQL Flexible Server.
  final String? replicationRole;
  final String? resourceGroupName;
  final String? restorePointInTime;
  /// The SKU Name of the MySQL Flexible Server.
  final String? skuName;
  /// A `storage` block for this MySQL Flexible Server as defined below.
  final List<GetFlexibleServerStorage>? storages;
  /// A mapping of tags which are assigned to the MySQL Flexible Server.
  final Map<String, String>? tags;
  /// The version of the MySQL Flexible Server.
  final String? version;
  /// The Availability Zones where this MySQL Flexible Server is located.
  final String? zone;

  /// Creates a new [GetFlexibleServerResult].
  /// [administratorLogin] The Administrator login of the MySQL Flexible Server.
  /// [backupRetentionDays] The backup retention days of the MySQL Flexible Server.
  /// [delegatedSubnetId] The ID of the virtual network subnet the MySQL Flexible Server is created in.
  /// [fqdn] The fully qualified domain name of the MySQL Flexible Server.
  /// [geoRedundantBackupEnabled] Is geo redundant backup enabled?
  /// [highAvailabilities] A `highAvailability` block for this MySQL Flexible Server as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region of the MySQL Flexible Server.
  /// [maintenanceWindows] A `maintenanceWindow` block for this MySQL Flexible Server as defined below.
  /// [name] Optional.
  /// [privateDnsZoneId] The ID of the Private DNS zone of the MySQL Flexible Server.
  /// [publicNetworkAccessEnabled] Is the public network access enabled?
  /// [replicaCapacity] The maximum number of replicas that a primary MySQL Flexible Server can have.
  /// [replicationRole] The replication role of the MySQL Flexible Server.
  /// [resourceGroupName] Optional.
  /// [restorePointInTime] Optional.
  /// [skuName] The SKU Name of the MySQL Flexible Server.
  /// [storages] A `storage` block for this MySQL Flexible Server as defined below.
  /// [tags] A mapping of tags which are assigned to the MySQL Flexible Server.
  /// [version] The version of the MySQL Flexible Server.
  /// [zone] The Availability Zones where this MySQL Flexible Server is located.
  const GetFlexibleServerResult({
    this.administratorLogin,
    this.backupRetentionDays,
    this.delegatedSubnetId,
    this.fqdn,
    this.geoRedundantBackupEnabled,
    this.highAvailabilities,
    this.id,
    this.location,
    this.maintenanceWindows,
    this.name,
    this.privateDnsZoneId,
    this.publicNetworkAccessEnabled,
    this.replicaCapacity,
    this.replicationRole,
    this.resourceGroupName,
    this.restorePointInTime,
    this.skuName,
    this.storages,
    this.tags,
    this.version,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'backupRetentionDays': ?backupRetentionDays,
      'delegatedSubnetId': ?delegatedSubnetId,
      'fqdn': ?fqdn,
      'geoRedundantBackupEnabled': ?geoRedundantBackupEnabled,
      'highAvailabilities': ?(() { final guardedValue = highAvailabilities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFlexibleServerHighAvailability, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'maintenanceWindows': ?(() { final guardedValue = maintenanceWindows; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFlexibleServerMaintenanceWindow, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'privateDnsZoneId': ?privateDnsZoneId,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'replicaCapacity': ?replicaCapacity,
      'replicationRole': ?replicationRole,
      'resourceGroupName': ?resourceGroupName,
      'restorePointInTime': ?restorePointInTime,
      'skuName': ?skuName,
      'storages': ?(() { final guardedValue = storages; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFlexibleServerStorage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'version': ?version,
      'zone': ?zone,
    };
  }

  factory GetFlexibleServerResult.fromMap(Map<String, dynamic> map) {
    return GetFlexibleServerResult(
      administratorLogin: (() { final guardedValue = map['administratorLogin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupRetentionDays: (() { final guardedValue = map['backupRetentionDays']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      delegatedSubnetId: (() { final guardedValue = map['delegatedSubnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      geoRedundantBackupEnabled: (() { final guardedValue = map['geoRedundantBackupEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      highAvailabilities: (() { final guardedValue = map['highAvailabilities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFlexibleServerHighAvailability>(guardedValue, (value) => GetFlexibleServerHighAvailability.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceWindows: (() { final guardedValue = map['maintenanceWindows']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFlexibleServerMaintenanceWindow>(guardedValue, (value) => GetFlexibleServerMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateDnsZoneId: (() { final guardedValue = map['privateDnsZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      replicaCapacity: (() { final guardedValue = map['replicaCapacity']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      replicationRole: (() { final guardedValue = map['replicationRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restorePointInTime: (() { final guardedValue = map['restorePointInTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storages: (() { final guardedValue = map['storages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFlexibleServerStorage>(guardedValue, (value) => GetFlexibleServerStorage.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
