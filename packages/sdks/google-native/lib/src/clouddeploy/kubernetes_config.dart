// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_service_mesh.dart';
import 'service_networking.dart';

/// KubernetesConfig contains the Kubernetes runtime configuration.
class KubernetesConfig {
  /// Kubernetes Gateway API service mesh configuration.
  final pulumi.Input<GatewayServiceMesh>? gatewayServiceMesh;

  /// Kubernetes Service networking configuration.
  final pulumi.Input<ServiceNetworking>? serviceNetworking;

  /// Creates a new [KubernetesConfig].
  /// [gatewayServiceMesh] Kubernetes Gateway API service mesh configuration.
  /// [serviceNetworking] Kubernetes Service networking configuration.
  KubernetesConfig({this.gatewayServiceMesh, this.serviceNetworking});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayServiceMesh':
          ?pulumi.Input.mapOptionalInputValue<
            GatewayServiceMesh,
            Map<String, dynamic>
          >(gatewayServiceMesh, (value) => value.toMap()),
      'serviceNetworking':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceNetworking,
            Map<String, dynamic>
          >(serviceNetworking, (value) => value.toMap()),
    };
  }

  factory KubernetesConfig.fromMap(Map<String, dynamic> map) {
    return KubernetesConfig(
      gatewayServiceMesh: (() {
        final guardedValue = map['gatewayServiceMesh'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GatewayServiceMesh.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serviceNetworking: (() {
        final guardedValue = map['serviceNetworking'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceNetworking.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
