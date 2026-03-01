// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_cloud_bigtable_instance_spec.dart';

/// Specification that applies to a Service resource. Valid only for entries with the `SERVICE` type.
class GoogleCloudDatacatalogV1ServiceSpec {
  /// Specification that applies to Instance entries of `CLOUD_BIGTABLE` system.
  final GoogleCloudDatacatalogV1CloudBigtableInstanceSpec? cloudBigtableInstanceSpec;

  /// Creates a new [GoogleCloudDatacatalogV1ServiceSpec].
  /// [cloudBigtableInstanceSpec] Specification that applies to Instance entries of `CLOUD_BIGTABLE` system.
  GoogleCloudDatacatalogV1ServiceSpec({
    this.cloudBigtableInstanceSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudBigtableInstanceSpec': ?cloudBigtableInstanceSpec == null ? null : cloudBigtableInstanceSpec!.toMap(),
    };
  }

  factory GoogleCloudDatacatalogV1ServiceSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1ServiceSpec(
      cloudBigtableInstanceSpec: map['cloudBigtableInstanceSpec'] == null ? null : GoogleCloudDatacatalogV1CloudBigtableInstanceSpec.fromMap((map['cloudBigtableInstanceSpec'] as Map).cast<String, dynamic>()),
    );
  }
}

