// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_service_mesh_response.dart';
import 'service_networking_response.dart';

/// KubernetesConfig contains the Kubernetes runtime configuration.
class KubernetesConfigResponse {
  /// Kubernetes Gateway API service mesh configuration.
  final GatewayServiceMeshResponse gatewayServiceMesh;
  /// Kubernetes Service networking configuration.
  final ServiceNetworkingResponse serviceNetworking;

  /// Creates a new [KubernetesConfigResponse].
  /// [gatewayServiceMesh] Kubernetes Gateway API service mesh configuration.
  /// [serviceNetworking] Kubernetes Service networking configuration.
  KubernetesConfigResponse({
    required this.gatewayServiceMesh,
    required this.serviceNetworking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayServiceMesh': gatewayServiceMesh.toMap(),
      'serviceNetworking': serviceNetworking.toMap(),
    };
  }

  factory KubernetesConfigResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesConfigResponse(
      gatewayServiceMesh: GatewayServiceMeshResponse.fromMap((map['gatewayServiceMesh'] as Map).cast<String, dynamic>()),
      serviceNetworking: ServiceNetworkingResponse.fromMap((map['serviceNetworking'] as Map).cast<String, dynamic>()),
    );
  }
}

