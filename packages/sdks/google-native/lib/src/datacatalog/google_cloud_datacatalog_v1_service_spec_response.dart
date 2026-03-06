// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_cloud_bigtable_instance_spec_response.dart';

/// Specification that applies to a Service resource. Valid only for entries with the `SERVICE` type.
class GoogleCloudDatacatalogV1ServiceSpecResponse {
  /// Specification that applies to Instance entries of `CLOUD_BIGTABLE` system.
  final pulumi.Input<GoogleCloudDatacatalogV1CloudBigtableInstanceSpecResponse> cloudBigtableInstanceSpec;

  /// Creates a new [GoogleCloudDatacatalogV1ServiceSpecResponse].
  /// [cloudBigtableInstanceSpec] Specification that applies to Instance entries of `CLOUD_BIGTABLE` system.
  const GoogleCloudDatacatalogV1ServiceSpecResponse({
    required this.cloudBigtableInstanceSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudBigtableInstanceSpec': pulumi.Input.mapInputValue<GoogleCloudDatacatalogV1CloudBigtableInstanceSpecResponse, Map<String, dynamic>>(cloudBigtableInstanceSpec, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogV1ServiceSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1ServiceSpecResponse(
      cloudBigtableInstanceSpec: pulumi.Input.fromValue(GoogleCloudDatacatalogV1CloudBigtableInstanceSpecResponse.fromMap((map['cloudBigtableInstanceSpec']! as Map).cast<String, dynamic>())),
    );
  }
}

