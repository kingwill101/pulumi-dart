// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Istio service scoped to an Istio mesh. Anthos clusters running ASM &lt; 1.6.8 will have their services ingested as this type.
class MeshIstio {
  /// Identifier for the mesh in which this Istio service is defined. Corresponds to the mesh_uid metric label in Istio metrics.
  final pulumi.Input<String>? meshUid;
  /// The name of the Istio service underlying this service. Corresponds to the destination_service_name metric label in Istio metrics.
  final pulumi.Input<String>? serviceName;
  /// The namespace of the Istio service underlying this service. Corresponds to the destination_service_namespace metric label in Istio metrics.
  final pulumi.Input<String>? serviceNamespace;

  /// Creates a new [MeshIstio].
  /// [meshUid] Identifier for the mesh in which this Istio service is defined. Corresponds to the mesh_uid metric label in Istio metrics.
  /// [serviceName] The name of the Istio service underlying this service. Corresponds to the destination_service_name metric label in Istio metrics.
  /// [serviceNamespace] The namespace of the Istio service underlying this service. Corresponds to the destination_service_namespace metric label in Istio metrics.
  MeshIstio({
    this.meshUid,
    this.serviceName,
    this.serviceNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meshUid': ?meshUid,
      'serviceName': ?serviceName,
      'serviceNamespace': ?serviceNamespace,
    };
  }

  factory MeshIstio.fromMap(Map<String, dynamic> map) {
    return MeshIstio(
      meshUid: (() { final guardedValue = map['meshUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceNamespace: (() { final guardedValue = map['serviceNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

