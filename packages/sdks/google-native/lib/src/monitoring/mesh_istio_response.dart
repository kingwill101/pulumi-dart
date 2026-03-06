// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Istio service scoped to an Istio mesh. Anthos clusters running ASM &lt; 1.6.8 will have their services ingested as this type.
class MeshIstioResponse {
  /// Identifier for the mesh in which this Istio service is defined. Corresponds to the mesh_uid metric label in Istio metrics.
  final pulumi.Input<String> meshUid;
  /// The name of the Istio service underlying this service. Corresponds to the destination_service_name metric label in Istio metrics.
  final pulumi.Input<String> serviceName;
  /// The namespace of the Istio service underlying this service. Corresponds to the destination_service_namespace metric label in Istio metrics.
  final pulumi.Input<String> serviceNamespace;

  /// Creates a new [MeshIstioResponse].
  /// [meshUid] Identifier for the mesh in which this Istio service is defined. Corresponds to the mesh_uid metric label in Istio metrics.
  /// [serviceName] The name of the Istio service underlying this service. Corresponds to the destination_service_name metric label in Istio metrics.
  /// [serviceNamespace] The namespace of the Istio service underlying this service. Corresponds to the destination_service_namespace metric label in Istio metrics.
  const MeshIstioResponse({
    required this.meshUid,
    required this.serviceName,
    required this.serviceNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meshUid': meshUid,
      'serviceName': serviceName,
      'serviceNamespace': serviceNamespace,
    };
  }

  factory MeshIstioResponse.fromMap(Map<String, dynamic> map) {
    return MeshIstioResponse(
      meshUid: pulumi.Input.fromValue(map['meshUid'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      serviceNamespace: pulumi.Input.fromValue(map['serviceNamespace'] as String),
    );
  }
}

