// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_cloud_bigtable_instance_spec_cloud_bigtable_cluster_spec.dart';

/// Specification that applies to Instance entries that are part of `CLOUD_BIGTABLE` system. (user_specified_type)
class GoogleCloudDatacatalogV1CloudBigtableInstanceSpec {
  /// The list of clusters for the Instance.
  final pulumi.Input<List<GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec>>? cloudBigtableClusterSpecs;

  /// Creates a new [GoogleCloudDatacatalogV1CloudBigtableInstanceSpec].
  /// [cloudBigtableClusterSpecs] The list of clusters for the Instance.
  const GoogleCloudDatacatalogV1CloudBigtableInstanceSpec({
    this.cloudBigtableClusterSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudBigtableClusterSpecs': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec>, List<Map<String, dynamic>>>(cloudBigtableClusterSpecs, (value) => pulumi.Input.encodeList<GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDatacatalogV1CloudBigtableInstanceSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1CloudBigtableInstanceSpec(
      cloudBigtableClusterSpecs: (() { final guardedValue = map['cloudBigtableClusterSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec>(guardedValue, (value) => GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
