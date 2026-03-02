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
  RedisEnterpriseArgs({
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
      clusterName: map['clusterName'] == null ? null : (map['clusterName']! as String).input(),
      encryption: map['encryption'] == null ? null : (ClusterPropertiesEncryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      highAvailability: map['highAvailability'] == null ? null : (map['highAvailability']! as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : (map['minimumTlsVersion']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: (Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

