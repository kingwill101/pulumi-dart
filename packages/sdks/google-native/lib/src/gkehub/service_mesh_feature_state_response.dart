// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_mesh_analysis_message_response.dart';

/// **Service Mesh**: State for the whole Hub, as analyzed by the Service Mesh Hub Controller.
class ServiceMeshFeatureStateResponse {
  /// Results of running Service Mesh analyzers.
  final pulumi.Input<List<ServiceMeshAnalysisMessageResponse>> analysisMessages;

  /// Creates a new [ServiceMeshFeatureStateResponse].
  /// [analysisMessages] Results of running Service Mesh analyzers.
  const ServiceMeshFeatureStateResponse({
    required this.analysisMessages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisMessages': pulumi.Input.mapInputValue<List<ServiceMeshAnalysisMessageResponse>, List<Map<String, dynamic>>>(analysisMessages, (value) => pulumi.Input.encodeList<ServiceMeshAnalysisMessageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceMeshFeatureStateResponse.fromMap(Map<String, dynamic> map) {
    return ServiceMeshFeatureStateResponse(
      analysisMessages: pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceMeshAnalysisMessageResponse>(map['analysisMessages']!, (value) => ServiceMeshAnalysisMessageResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
