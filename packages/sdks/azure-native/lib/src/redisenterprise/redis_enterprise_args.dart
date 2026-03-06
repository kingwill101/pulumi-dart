// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_properties_encryption.dart';
import 'managed_service_identity.dart';
import 'sku.dart';

/// {@template pulumi_redisenterprise_redis_enterprise_args_doc}
/// The set of arguments for RedisEnterprise.
/// {@endtemplate}
/// {@macro pulumi_redisenterprise_redis_enterprise_args_doc}
class RedisEnterpriseArgs {
  /// The name of the Redis Enterprise cluster. Name must be 1-60 characters long. Allowed characters(A-Z, a-z, 0-9) and hyphen(-). There can be no leading nor trailing nor consecutive hyphens
  final pulumi.Input<String>? clusterName;
  /// Encryption-at-rest configuration for the cluster.
  final pulumi.Input<ClusterPropertiesEncryption>? encryption;
  /// Enabled by default. If highAvailability is disabled, the data set is not replicated. This affects the availability SLA, and increases the risk of data loss.
  final pulumi.Input<String>? highAvailability;
  /// The identity of the resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The minimum TLS version for the cluster to support, e.g. '1.2'. Newer versions can be added in the future. Note that TLS 1.0 and TLS 1.1 are now completely obsolete -- you cannot use them. They are mentioned only for the sake of consistency with old API versions.
  final pulumi.Input<String>? minimumTlsVersion;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU to create, which affects price, performance, and features.
  final pulumi.Input<Sku> sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Availability Zones where this cluster will be deployed.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [RedisEnterpriseArgs].
  /// [clusterName] The name of the Redis Enterprise cluster. Name must be 1-60 characters long. Allowed characters(A-Z, a-z, 0-9) and hyphen(-). There can be no leading nor trailing nor consecutive hyphens
  /// [encryption] Encryption-at-rest configuration for the cluster.
  /// [highAvailability] Enabled by default. If highAvailability is disabled, the data set is not replicated. This affects the availability SLA, and increases the risk of data loss.
  /// [identity] The identity of the resource.
  /// [location] The geo-location where the resource lives
  /// [minimumTlsVersion] The minimum TLS version for the cluster to support, e.g. '1.2'. Newer versions can be added in the future. Note that TLS 1.0 and TLS 1.1 are now completely obsolete -- you cannot use them. They are mentioned only for the sake of consistency with old API versions.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The SKU to create, which affects price, performance, and features.
  /// [tags] Resource tags.
  /// [zones] The Availability Zones where this cluster will be deployed.
  const RedisEnterpriseArgs({
    this.clusterName,
    this.encryption,
    this.highAvailability,
    this.identity,
    this.location,
    this.minimumTlsVersion,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'encryption': ?pulumi.Input.mapOptionalInputValue<ClusterPropertiesEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'highAvailability': ?highAvailability,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'minimumTlsVersion': ?minimumTlsVersion,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory RedisEnterpriseArgs.fromMap(Map<String, dynamic> map) {
    return RedisEnterpriseArgs(
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterPropertiesEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      highAvailability: (() { final guardedValue = map['highAvailability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: pulumi.Input.fromValue(Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

