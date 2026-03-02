// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_vertex_model_spec.dart';

/// Specification that applies to a model. Valid only for entries with the `MODEL` type.
class GoogleCloudDatacatalogV1ModelSpec {
  /// Specification for vertex model resources.
  final pulumi.Input<GoogleCloudDatacatalogV1VertexModelSpec>? vertexModelSpec;

  /// Creates a new [GoogleCloudDatacatalogV1ModelSpec].
  /// [vertexModelSpec] Specification for vertex model resources.
  GoogleCloudDatacatalogV1ModelSpec({
    this.vertexModelSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vertexModelSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1VertexModelSpec, Map<String, dynamic>>(vertexModelSpec, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogV1ModelSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1ModelSpec(
      vertexModelSpec: map['vertexModelSpec'] == null ? null : (GoogleCloudDatacatalogV1VertexModelSpec.fromMap((map['vertexModelSpec'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

