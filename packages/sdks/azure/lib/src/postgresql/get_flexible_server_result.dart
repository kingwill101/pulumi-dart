// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_flexible_server_high_availability.dart';

/// Result data returned by getFlexibleServer.
class GetFlexibleServerResult {
  /// The Administrator login for the PostgreSQL Flexible Server.
  final String administratorLogin;
  /// Is the storage auto grow for PostgreSQL Flexible Server enabled?
  final bool autoGrowEnabled;
  /// The backup retention days for the PostgreSQL Flexible Server.
  final int backupRetentionDays;
  /// The ID of the virtual network subnet to create the PostgreSQL Flexible Server.
  final String delegatedSubnetId;
  /// The FQDN of the PostgreSQL Flexible Server.
  final String fqdn;
  /// A `highAvailability` block for this PostgreSQL Flexible Server as defined below.
  final List<GetFlexibleServerHighAvailability> highAvailabilities;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the PostgreSQL Flexible Server exists.
  final String location;
  final String name;
  /// Is public network access enabled?
  final bool publicNetworkAccessEnabled;
  final String resourceGroupName;
  /// The SKU Name for the PostgreSQL Flexible Server. The name of the SKU, follows the `tier` + `name` pattern (e.g. `B_Standard_B1ms`, `GP_Standard_D2s_v3`, `MO_Standard_E4s_v3`).
  final String skuName;
  /// The max storage allowed for the PostgreSQL Flexible Server.
  final int storageMb;
  /// A mapping of tags assigned to the PostgreSQL Flexible Server.
  final Map<String, String> tags;
  /// The version of PostgreSQL Flexible Server to use.
  final String version;
  /// The Availability Zones where this PostgreSQL Flexible Server is located.
  final String zone;

  /// Creates a new [GetFlexibleServerResult].
  /// [administratorLogin] The Administrator login for the PostgreSQL Flexible Server.
  /// [autoGrowEnabled] Is the storage auto grow for PostgreSQL Flexible Server enabled?
  /// [backupRetentionDays] The backup retention days for the PostgreSQL Flexible Server.
  /// [delegatedSubnetId] The ID of the virtual network subnet to create the PostgreSQL Flexible Server.
  /// [fqdn] The FQDN of the PostgreSQL Flexible Server.
  /// [highAvailabilities] A `highAvailability` block for this PostgreSQL Flexible Server as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the PostgreSQL Flexible Server exists.
  /// [name] Required.
  /// [publicNetworkAccessEnabled] Is public network access enabled?
  /// [resourceGroupName] Required.
  /// [skuName] The SKU Name for the PostgreSQL Flexible Server. The name of the SKU, follows the `tier` + `name` pattern (e.g. `B_Standard_B1ms`, `GP_Standard_D2s_v3`, `MO_Standard_E4s_v3`).
  /// [storageMb] The max storage allowed for the PostgreSQL Flexible Server.
  /// [tags] A mapping of tags assigned to the PostgreSQL Flexible Server.
  /// [version] The version of PostgreSQL Flexible Server to use.
  /// [zone] The Availability Zones where this PostgreSQL Flexible Server is located.
  const GetFlexibleServerResult({
    required this.administratorLogin,
    required this.autoGrowEnabled,
    required this.backupRetentionDays,
    required this.delegatedSubnetId,
    required this.fqdn,
    required this.highAvailabilities,
    required this.id,
    required this.location,
    required this.name,
    required this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    required this.skuName,
    required this.storageMb,
    required this.tags,
    required this.version,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': administratorLogin,
      'autoGrowEnabled': autoGrowEnabled,
      'backupRetentionDays': backupRetentionDays,
      'delegatedSubnetId': delegatedSubnetId,
      'fqdn': fqdn,
      'highAvailabilities': pulumi.Input.encodeList<GetFlexibleServerHighAvailability, Map<String, dynamic>>(highAvailabilities, (value) => value.toMap()),
      'id': id,
      'location': location,
      'name': name,
      'publicNetworkAccessEnabled': publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'storageMb': storageMb,
      'tags': tags,
      'version': version,
      'zone': zone,
    };
  }

  factory GetFlexibleServerResult.fromMap(Map<String, dynamic> map) {
    return GetFlexibleServerResult(
      administratorLogin: map['administratorLogin'] as String,
      autoGrowEnabled: map['autoGrowEnabled'] as bool,
      backupRetentionDays: map['backupRetentionDays'] as int,
      delegatedSubnetId: map['delegatedSubnetId'] as String,
      fqdn: map['fqdn'] as String,
      highAvailabilities: pulumi.Input.decodeList<GetFlexibleServerHighAvailability>(map['highAvailabilities']!, (value) => GetFlexibleServerHighAvailability.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
      storageMb: map['storageMb'] as int,
      tags: (map['tags'] as Map).cast<String, String>(),
      version: map['version'] as String,
      zone: map['zone'] as String,
    );
  }
}
