// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_vertex_dataset_spec.dart';

/// Specification that applies to a dataset. Valid only for entries with the `DATASET` type.
class GoogleCloudDatacatalogV1DatasetSpec {
  /// Vertex AI Dataset specific fields
  final pulumi.Input<GoogleCloudDatacatalogV1VertexDatasetSpec>? vertexDatasetSpec;

  /// Creates a new [GoogleCloudDatacatalogV1DatasetSpec].
  /// [vertexDatasetSpec] Vertex AI Dataset specific fields
  const GoogleCloudDatacatalogV1DatasetSpec({
    this.vertexDatasetSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vertexDatasetSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1VertexDatasetSpec, Map<String, dynamic>>(vertexDatasetSpec, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogV1DatasetSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DatasetSpec(
      vertexDatasetSpec: (() { final guardedValue = map['vertexDatasetSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatacatalogV1VertexDatasetSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

