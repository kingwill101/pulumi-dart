// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_vertex_model_source_info.dart';

/// Specification for vertex model resources.
class GoogleCloudDatacatalogV1VertexModelSpec {
  /// URI of the Docker image to be used as the custom container for serving predictions.
  final pulumi.Input<String>? containerImageUri;
  /// User provided version aliases so that a model version can be referenced via alias
  final pulumi.Input<List<String>>? versionAliases;
  /// The description of this version.
  final pulumi.Input<String>? versionDescription;
  /// The version ID of the model.
  final pulumi.Input<String>? versionId;
  /// Source of a Vertex model.
  final pulumi.Input<GoogleCloudDatacatalogV1VertexModelSourceInfo>? vertexModelSourceInfo;

  /// Creates a new [GoogleCloudDatacatalogV1VertexModelSpec].
  /// [containerImageUri] URI of the Docker image to be used as the custom container for serving predictions.
  /// [versionAliases] User provided version aliases so that a model version can be referenced via alias
  /// [versionDescription] The description of this version.
  /// [versionId] The version ID of the model.
  /// [vertexModelSourceInfo] Source of a Vertex model.
  GoogleCloudDatacatalogV1VertexModelSpec({
    this.containerImageUri,
    this.versionAliases,
    this.versionDescription,
    this.versionId,
    this.vertexModelSourceInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImageUri': ?containerImageUri,
      'versionAliases': ?versionAliases,
      'versionDescription': ?versionDescription,
      'versionId': ?versionId,
      'vertexModelSourceInfo': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1VertexModelSourceInfo, Map<String, dynamic>>(vertexModelSourceInfo, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogV1VertexModelSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1VertexModelSpec(
      containerImageUri: (() { final guardedValue = map['containerImageUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionAliases: (() { final guardedValue = map['versionAliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      versionDescription: (() { final guardedValue = map['versionDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vertexModelSourceInfo: (() { final guardedValue = map['vertexModelSourceInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatacatalogV1VertexModelSourceInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

