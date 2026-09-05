// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_elastic_pool_skus.dart';

/// Result data returned by getElasticPool.
class GetElasticPoolResult {
  /// The type of enclave being used by the elastic pool.
  final String? enclaveType;
  /// Specifies the number of high availability replicas for the elastic pool.
  final int? highAvailabilityReplicaCount;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The license type to apply for this elastic pool.
  final String? licenseType;
  /// Specifies the supported Azure location where the resource exists.
  final String? location;
  /// The max data size of the elastic pool in bytes.
  final int? maxSizeBytes;
  /// The max data size of the elastic pool in gigabytes.
  final double? maxSizeGb;
  /// Specifies the SKU Name for this Elasticpool.
  final String? name;
  /// The maximum capacity any one database can consume.
  final int? perDbMaxCapacity;
  /// The minimum capacity all databases are guaranteed.
  final int? perDbMinCapacity;
  final String? resourceGroupName;
  final String? serverName;
  /// A `sku` block as defined below.
  final List<GetElasticPoolSkus>? skus;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;
  /// Whether or not this elastic pool is zone redundant.
  final bool? zoneRedundant;

  /// Creates a new [GetElasticPoolResult].
  /// [enclaveType] The type of enclave being used by the elastic pool.
  /// [highAvailabilityReplicaCount] Specifies the number of high availability replicas for the elastic pool.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [licenseType] The license type to apply for this elastic pool.
  /// [location] Specifies the supported Azure location where the resource exists.
  /// [maxSizeBytes] The max data size of the elastic pool in bytes.
  /// [maxSizeGb] The max data size of the elastic pool in gigabytes.
  /// [name] Specifies the SKU Name for this Elasticpool.
  /// [perDbMaxCapacity] The maximum capacity any one database can consume.
  /// [perDbMinCapacity] The minimum capacity all databases are guaranteed.
  /// [resourceGroupName] Optional.
  /// [serverName] Optional.
  /// [skus] A `sku` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneRedundant] Whether or not this elastic pool is zone redundant.
  const GetElasticPoolResult({
    this.enclaveType,
    this.highAvailabilityReplicaCount,
    this.id,
    this.licenseType,
    this.location,
    this.maxSizeBytes,
    this.maxSizeGb,
    this.name,
    this.perDbMaxCapacity,
    this.perDbMinCapacity,
    this.resourceGroupName,
    this.serverName,
    this.skus,
    this.tags,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enclaveType': ?enclaveType,
      'highAvailabilityReplicaCount': ?highAvailabilityReplicaCount,
      'id': ?id,
      'licenseType': ?licenseType,
      'location': ?location,
      'maxSizeBytes': ?maxSizeBytes,
      'maxSizeGb': ?maxSizeGb,
      'name': ?name,
      'perDbMaxCapacity': ?perDbMaxCapacity,
      'perDbMinCapacity': ?perDbMinCapacity,
      'resourceGroupName': ?resourceGroupName,
      'serverName': ?serverName,
      'skus': ?(() { final guardedValue = skus; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetElasticPoolSkus, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory GetElasticPoolResult.fromMap(Map<String, dynamic> map) {
    return GetElasticPoolResult(
      enclaveType: (() { final guardedValue = map['enclaveType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      highAvailabilityReplicaCount: (() { final guardedValue = map['highAvailabilityReplicaCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxSizeBytes: (() { final guardedValue = map['maxSizeBytes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxSizeGb: (() { final guardedValue = map['maxSizeGb']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      perDbMaxCapacity: (() { final guardedValue = map['perDbMaxCapacity']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      perDbMinCapacity: (() { final guardedValue = map['perDbMinCapacity']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skus: (() { final guardedValue = map['skus']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetElasticPoolSkus>(guardedValue, (value) => GetElasticPoolSkus.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
