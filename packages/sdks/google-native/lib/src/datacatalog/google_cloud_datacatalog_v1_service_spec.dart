// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_cloud_bigtable_instance_spec.dart';

/// Specification that applies to a Service resource. Valid only for entries with the `SERVICE` type.
class GoogleCloudDatacatalogV1ServiceSpec {
  /// Specification that applies to Instance entries of `CLOUD_BIGTABLE` system.
  final pulumi.Input<GoogleCloudDatacatalogV1CloudBigtableInstanceSpec>? cloudBigtableInstanceSpec;

  /// Creates a new [GoogleCloudDatacatalogV1ServiceSpec].
  /// [cloudBigtableInstanceSpec] Specification that applies to Instance entries of `CLOUD_BIGTABLE` system.
  const GoogleCloudDatacatalogV1ServiceSpec({
    this.cloudBigtableInstanceSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudBigtableInstanceSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1CloudBigtableInstanceSpec, Map<String, dynamic>>(cloudBigtableInstanceSpec, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogV1ServiceSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1ServiceSpec(
      cloudBigtableInstanceSpec: (() { final guardedValue = map['cloudBigtableInstanceSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatacatalogV1CloudBigtableInstanceSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
