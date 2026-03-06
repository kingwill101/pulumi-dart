// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_mesh_type_response.dart';

/// AnalysisMessageBase describes some common information that is needed for all messages.
class ServiceMeshAnalysisMessageBaseResponse {
  /// A url pointing to the Service Mesh or Istio documentation for this specific error type.
  final pulumi.Input<String> documentationUrl;
  /// Represents how severe a message is.
  final pulumi.Input<String> level;
  /// Represents the specific type of a message.
  final pulumi.Input<ServiceMeshTypeResponse> type;

  /// Creates a new [ServiceMeshAnalysisMessageBaseResponse].
  /// [documentationUrl] A url pointing to the Service Mesh or Istio documentation for this specific error type.
  /// [level] Represents how severe a message is.
  /// [type] Represents the specific type of a message.
  const ServiceMeshAnalysisMessageBaseResponse({
    required this.documentationUrl,
    required this.level,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentationUrl': documentationUrl,
      'level': level,
      'type': pulumi.Input.mapInputValue<ServiceMeshTypeResponse, Map<String, dynamic>>(type, (value) => value.toMap()),
    };
  }

  factory ServiceMeshAnalysisMessageBaseResponse.fromMap(Map<String, dynamic> map) {
    return ServiceMeshAnalysisMessageBaseResponse(
      documentationUrl: pulumi.Input.fromValue(map['documentationUrl'] as String),
      level: pulumi.Input.fromValue(map['level'] as String),
      type: pulumi.Input.fromValue(ServiceMeshTypeResponse.fromMap((map['type']! as Map).cast<String, dynamic>())),
    );
  }
}

