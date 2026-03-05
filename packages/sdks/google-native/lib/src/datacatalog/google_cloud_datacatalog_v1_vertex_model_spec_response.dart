// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_vertex_model_source_info_response.dart';

/// Specification for vertex model resources.
class GoogleCloudDatacatalogV1VertexModelSpecResponse {
  /// URI of the Docker image to be used as the custom container for serving predictions.
  final pulumi.Input<String> containerImageUri;
  /// User provided version aliases so that a model version can be referenced via alias
  final pulumi.Input<List<String>> versionAliases;
  /// The description of this version.
  final pulumi.Input<String> versionDescription;
  /// The version ID of the model.
  final pulumi.Input<String> versionId;
  /// Source of a Vertex model.
  final pulumi.Input<GoogleCloudDatacatalogV1VertexModelSourceInfoResponse> vertexModelSourceInfo;

  /// Creates a new [GoogleCloudDatacatalogV1VertexModelSpecResponse].
  /// [containerImageUri] URI of the Docker image to be used as the custom container for serving predictions.
  /// [versionAliases] User provided version aliases so that a model version can be referenced via alias
  /// [versionDescription] The description of this version.
  /// [versionId] The version ID of the model.
  /// [vertexModelSourceInfo] Source of a Vertex model.
  GoogleCloudDatacatalogV1VertexModelSpecResponse({
    required this.containerImageUri,
    required this.versionAliases,
    required this.versionDescription,
    required this.versionId,
    required this.vertexModelSourceInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImageUri': containerImageUri,
      'versionAliases': versionAliases,
      'versionDescription': versionDescription,
      'versionId': versionId,
      'vertexModelSourceInfo': pulumi.Input.mapInputValue<GoogleCloudDatacatalogV1VertexModelSourceInfoResponse, Map<String, dynamic>>(vertexModelSourceInfo, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogV1VertexModelSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1VertexModelSpecResponse(
      containerImageUri: pulumi.Input.fromValue(map['containerImageUri'] as String),
      versionAliases: pulumi.Input.fromValue((map['versionAliases'] as List).cast<String>()),
      versionDescription: pulumi.Input.fromValue(map['versionDescription'] as String),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
      vertexModelSourceInfo: pulumi.Input.fromValue(GoogleCloudDatacatalogV1VertexModelSourceInfoResponse.fromMap((map['vertexModelSourceInfo']! as Map).cast<String, dynamic>())),
    );
  }
}

