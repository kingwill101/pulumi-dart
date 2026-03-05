// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_elastic_pool_skus.dart';

/// Result data returned by getElasticPool.
class GetElasticPoolResult {
  /// The type of enclave being used by the elastic pool.
  final String enclaveType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The license type to apply for this elastic pool.
  final String licenseType;
  /// Specifies the supported Azure location where the resource exists.
  final String location;
  /// The max data size of the elastic pool in bytes.
  final int maxSizeBytes;
  /// The max data size of the elastic pool in gigabytes.
  final double maxSizeGb;
  /// Specifies the SKU Name for this Elasticpool.
  final String name;
  /// The maximum capacity any one database can consume.
  final int perDbMaxCapacity;
  /// The minimum capacity all databases are guaranteed.
  final int perDbMinCapacity;
  final String resourceGroupName;
  final String serverName;
  /// A `sku` block as defined below.
  final List<GetElasticPoolSkus> skus;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// Whether or not this elastic pool is zone redundant.
  final bool zoneRedundant;

  /// Creates a new [GetElasticPoolResult].
  /// [enclaveType] The type of enclave being used by the elastic pool.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [licenseType] The license type to apply for this elastic pool.
  /// [location] Specifies the supported Azure location where the resource exists.
  /// [maxSizeBytes] The max data size of the elastic pool in bytes.
  /// [maxSizeGb] The max data size of the elastic pool in gigabytes.
  /// [name] Specifies the SKU Name for this Elasticpool.
  /// [perDbMaxCapacity] The maximum capacity any one database can consume.
  /// [perDbMinCapacity] The minimum capacity all databases are guaranteed.
  /// [resourceGroupName] Required.
  /// [serverName] Required.
  /// [skus] A `sku` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneRedundant] Whether or not this elastic pool is zone redundant.
  GetElasticPoolResult({
    required this.enclaveType,
    required this.id,
    required this.licenseType,
    required this.location,
    required this.maxSizeBytes,
    required this.maxSizeGb,
    required this.name,
    required this.perDbMaxCapacity,
    required this.perDbMinCapacity,
    required this.resourceGroupName,
    required this.serverName,
    required this.skus,
    required this.tags,
    required this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enclaveType': enclaveType,
      'id': id,
      'licenseType': licenseType,
      'location': location,
      'maxSizeBytes': maxSizeBytes,
      'maxSizeGb': maxSizeGb,
      'name': name,
      'perDbMaxCapacity': perDbMaxCapacity,
      'perDbMinCapacity': perDbMinCapacity,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'skus': pulumi.Input.encodeList<GetElasticPoolSkus, Map<String, dynamic>>(skus, (value) => value.toMap()),
      'tags': tags,
      'zoneRedundant': zoneRedundant,
    };
  }

  factory GetElasticPoolResult.fromMap(Map<String, dynamic> map) {
    return GetElasticPoolResult(
      enclaveType: map['enclaveType'] as String,
      id: map['id'] as String,
      licenseType: map['licenseType'] as String,
      location: map['location'] as String,
      maxSizeBytes: map['maxSizeBytes'] as int,
      maxSizeGb: map['maxSizeGb'] as double,
      name: map['name'] as String,
      perDbMaxCapacity: map['perDbMaxCapacity'] as int,
      perDbMinCapacity: map['perDbMinCapacity'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
      skus: pulumi.Input.decodeList<GetElasticPoolSkus>(map['skus']!, (value) => GetElasticPoolSkus.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      zoneRedundant: map['zoneRedundant'] as bool,
    );
  }
}

