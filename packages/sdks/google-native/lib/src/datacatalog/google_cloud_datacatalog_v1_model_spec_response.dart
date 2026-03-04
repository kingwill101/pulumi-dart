// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_vertex_model_spec_response.dart';

/// Specification that applies to a model. Valid only for entries with the `MODEL` type.
class GoogleCloudDatacatalogV1ModelSpecResponse {
  /// Specification for vertex model resources.
  final pulumi.Input<GoogleCloudDatacatalogV1VertexModelSpecResponse>
  vertexModelSpec;

  /// Creates a new [GoogleCloudDatacatalogV1ModelSpecResponse].
  /// [vertexModelSpec] Specification for vertex model resources.
  GoogleCloudDatacatalogV1ModelSpecResponse({required this.vertexModelSpec});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vertexModelSpec':
          pulumi.Input.mapInputValue<
            GoogleCloudDatacatalogV1VertexModelSpecResponse,
            Map<String, dynamic>
          >(vertexModelSpec, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogV1ModelSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1ModelSpecResponse(
      vertexModelSpec: pulumi.Input.fromValue(
        GoogleCloudDatacatalogV1VertexModelSpecResponse.fromMap(
          (map['vertexModelSpec']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
