// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_service_mesh_response.dart';
import 'service_networking_response.dart';

/// KubernetesConfig contains the Kubernetes runtime configuration.
class KubernetesConfigResponse {
  /// Kubernetes Gateway API service mesh configuration.
  final pulumi.Input<GatewayServiceMeshResponse> gatewayServiceMesh;

  /// Kubernetes Service networking configuration.
  final pulumi.Input<ServiceNetworkingResponse> serviceNetworking;

  /// Creates a new [KubernetesConfigResponse].
  /// [gatewayServiceMesh] Kubernetes Gateway API service mesh configuration.
  /// [serviceNetworking] Kubernetes Service networking configuration.
  KubernetesConfigResponse({
    required this.gatewayServiceMesh,
    required this.serviceNetworking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayServiceMesh':
          pulumi.Input.mapInputValue<
            GatewayServiceMeshResponse,
            Map<String, dynamic>
          >(gatewayServiceMesh, (value) => value.toMap()),
      'serviceNetworking':
          pulumi.Input.mapInputValue<
            ServiceNetworkingResponse,
            Map<String, dynamic>
          >(serviceNetworking, (value) => value.toMap()),
    };
  }

  factory KubernetesConfigResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesConfigResponse(
      gatewayServiceMesh: pulumi.Input.fromValue(
        GatewayServiceMeshResponse.fromMap(
          (map['gatewayServiceMesh']! as Map).cast<String, dynamic>(),
        ),
      ),
      serviceNetworking: pulumi.Input.fromValue(
        ServiceNetworkingResponse.fromMap(
          (map['serviceNetworking']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
