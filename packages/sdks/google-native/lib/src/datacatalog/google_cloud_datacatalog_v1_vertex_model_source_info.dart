// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_vertex_model_source_info_source_type.dart';

/// Detail description of the source information of a Vertex model.
class GoogleCloudDatacatalogV1VertexModelSourceInfo {
  /// If this Model is copy of another Model. If true then source_type pertains to the original.
  final pulumi.Input<bool>? copy;
  /// Type of the model source.
  final pulumi.Input<GoogleCloudDatacatalogV1VertexModelSourceInfoSourceType>? sourceType;

  /// Creates a new [GoogleCloudDatacatalogV1VertexModelSourceInfo].
  /// [copy] If this Model is copy of another Model. If true then source_type pertains to the original.
  /// [sourceType] Type of the model source.
  GoogleCloudDatacatalogV1VertexModelSourceInfo({
    this.copy,
    this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copy': ?copy,
      'sourceType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1VertexModelSourceInfoSourceType, String>(sourceType, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDatacatalogV1VertexModelSourceInfo.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1VertexModelSourceInfo(
      copy: (() { final guardedValue = map['copy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatacatalogV1VertexModelSourceInfoSourceType.fromValue(guardedValue as String)); })(),
    );
  }
}

