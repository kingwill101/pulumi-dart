// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Detail description of the source information of a Vertex model.
class GoogleCloudDatacatalogV1VertexModelSourceInfoResponse {
  /// If this Model is copy of another Model. If true then source_type pertains to the original.
  final pulumi.Input<bool> copy;
  /// Type of the model source.
  final pulumi.Input<String> sourceType;

  /// Creates a new [GoogleCloudDatacatalogV1VertexModelSourceInfoResponse].
  /// [copy] If this Model is copy of another Model. If true then source_type pertains to the original.
  /// [sourceType] Type of the model source.
  GoogleCloudDatacatalogV1VertexModelSourceInfoResponse({
    required this.copy,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copy': copy,
      'sourceType': sourceType,
    };
  }

  factory GoogleCloudDatacatalogV1VertexModelSourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1VertexModelSourceInfoResponse(
      copy: pulumi.Input.fromValue(map['copy'] as bool),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
    );
  }
}

