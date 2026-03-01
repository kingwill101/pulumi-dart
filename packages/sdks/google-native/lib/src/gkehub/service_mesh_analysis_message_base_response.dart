// ignore_for_file: unused_element, unnecessary_cast

import 'service_mesh_type_response.dart';

/// AnalysisMessageBase describes some common information that is needed for all messages.
class ServiceMeshAnalysisMessageBaseResponse {
  /// A url pointing to the Service Mesh or Istio documentation for this specific error type.
  final String documentationUrl;
  /// Represents how severe a message is.
  final String level;
  /// Represents the specific type of a message.
  final ServiceMeshTypeResponse type;

  /// Creates a new [ServiceMeshAnalysisMessageBaseResponse].
  /// [documentationUrl] A url pointing to the Service Mesh or Istio documentation for this specific error type.
  /// [level] Represents how severe a message is.
  /// [type] Represents the specific type of a message.
  ServiceMeshAnalysisMessageBaseResponse({
    required this.documentationUrl,
    required this.level,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentationUrl': documentationUrl,
      'level': level,
      'type': type.toMap(),
    };
  }

  factory ServiceMeshAnalysisMessageBaseResponse.fromMap(Map<String, dynamic> map) {
    return ServiceMeshAnalysisMessageBaseResponse(
      documentationUrl: map['documentationUrl'] as String,
      level: map['level'] as String,
      type: ServiceMeshTypeResponse.fromMap((map['type'] as Map).cast<String, dynamic>()),
    );
  }
}

