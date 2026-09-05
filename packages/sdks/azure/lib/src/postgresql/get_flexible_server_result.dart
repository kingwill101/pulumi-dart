// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_flexible_server_high_availability.dart';

/// Result data returned by getFlexibleServer.
class GetFlexibleServerResult {
  /// The Administrator login for the PostgreSQL Flexible Server.
  final String? administratorLogin;
  /// Is the storage auto grow for PostgreSQL Flexible Server enabled?
  final bool? autoGrowEnabled;
  /// The backup retention days for the PostgreSQL Flexible Server.
  final int? backupRetentionDays;
  /// The ID of the virtual network subnet to create the PostgreSQL Flexible Server.
  final String? delegatedSubnetId;
  /// The FQDN of the PostgreSQL Flexible Server.
  final String? fqdn;
  /// A `highAvailability` block for this PostgreSQL Flexible Server as defined below.
  final List<GetFlexibleServerHighAvailability>? highAvailabilities;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the PostgreSQL Flexible Server exists.
  final String? location;
  final String? name;
  /// Is public network access enabled?
  final bool? publicNetworkAccessEnabled;
  final String? resourceGroupName;
  /// The SKU Name for the PostgreSQL Flexible Server. The name of the SKU, follows the `tier` + `name` pattern (e.g. `B_Standard_B1ms`, `GP_Standard_D2s_v3`, `MO_Standard_E4s_v3`).
  final String? skuName;
  /// The max storage allowed for the PostgreSQL Flexible Server.
  final int? storageMb;
  /// A mapping of tags assigned to the PostgreSQL Flexible Server.
  final Map<String, String>? tags;
  /// The version of PostgreSQL Flexible Server to use.
  final String? version;
  /// The Availability Zones where this PostgreSQL Flexible Server is located.
  final String? zone;

  /// Creates a new [GetFlexibleServerResult].
  /// [administratorLogin] The Administrator login for the PostgreSQL Flexible Server.
  /// [autoGrowEnabled] Is the storage auto grow for PostgreSQL Flexible Server enabled?
  /// [backupRetentionDays] The backup retention days for the PostgreSQL Flexible Server.
  /// [delegatedSubnetId] The ID of the virtual network subnet to create the PostgreSQL Flexible Server.
  /// [fqdn] The FQDN of the PostgreSQL Flexible Server.
  /// [highAvailabilities] A `highAvailability` block for this PostgreSQL Flexible Server as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the PostgreSQL Flexible Server exists.
  /// [name] Optional.
  /// [publicNetworkAccessEnabled] Is public network access enabled?
  /// [resourceGroupName] Optional.
  /// [skuName] The SKU Name for the PostgreSQL Flexible Server. The name of the SKU, follows the `tier` + `name` pattern (e.g. `B_Standard_B1ms`, `GP_Standard_D2s_v3`, `MO_Standard_E4s_v3`).
  /// [storageMb] The max storage allowed for the PostgreSQL Flexible Server.
  /// [tags] A mapping of tags assigned to the PostgreSQL Flexible Server.
  /// [version] The version of PostgreSQL Flexible Server to use.
  /// [zone] The Availability Zones where this PostgreSQL Flexible Server is located.
  const GetFlexibleServerResult({
    this.administratorLogin,
    this.autoGrowEnabled,
    this.backupRetentionDays,
    this.delegatedSubnetId,
    this.fqdn,
    this.highAvailabilities,
    this.id,
    this.location,
    this.name,
    this.publicNetworkAccessEnabled,
    this.resourceGroupName,
    this.skuName,
    this.storageMb,
    this.tags,
    this.version,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'autoGrowEnabled': ?autoGrowEnabled,
      'backupRetentionDays': ?backupRetentionDays,
      'delegatedSubnetId': ?delegatedSubnetId,
      'fqdn': ?fqdn,
      'highAvailabilities': ?(() { final guardedValue = highAvailabilities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFlexibleServerHighAvailability, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'storageMb': ?storageMb,
      'tags': ?tags,
      'version': ?version,
      'zone': ?zone,
    };
  }

  factory GetFlexibleServerResult.fromMap(Map<String, dynamic> map) {
    return GetFlexibleServerResult(
      administratorLogin: (() { final guardedValue = map['administratorLogin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoGrowEnabled: (() { final guardedValue = map['autoGrowEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      backupRetentionDays: (() { final guardedValue = map['backupRetentionDays']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      delegatedSubnetId: (() { final guardedValue = map['delegatedSubnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      highAvailabilities: (() { final guardedValue = map['highAvailabilities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFlexibleServerHighAvailability>(guardedValue, (value) => GetFlexibleServerHighAvailability.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageMb: (() { final guardedValue = map['storageMb']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
