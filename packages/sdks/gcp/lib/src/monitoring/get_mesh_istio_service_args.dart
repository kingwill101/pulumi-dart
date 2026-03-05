// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_get_mesh_istio_service_get_mesh_istio_service_args_doc}
/// Arguments for getMeshIstioService.
/// {@endtemplate}
/// {@macro pulumi_monitoring_get_mesh_istio_service_get_mesh_istio_service_args_doc}
class GetMeshIstioServiceArgs {
  /// Identifier for the mesh in which this Istio service is defined.
  /// Corresponds to the meshUid metric label in Istio metrics.
  final pulumi.Input<String> meshUid;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the Istio service underlying this service.
  /// Corresponds to the destination_service_name metric label in Istio metrics.
  ///
  /// - - -
  ///
  /// Other optional fields include:
  final pulumi.Input<String> serviceName;
  /// The namespace of the Istio service underlying this service.
  /// Corresponds to the destination_service_namespace metric label in Istio metrics.
  final pulumi.Input<String> serviceNamespace;

  /// Creates a new [GetMeshIstioServiceArgs].
  /// [meshUid] Identifier for the mesh in which this Istio service is defined.
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceName] The name of the Istio service underlying this service.
  /// [serviceNamespace] The namespace of the Istio service underlying this service.
  GetMeshIstioServiceArgs({
    required this.meshUid,
    this.project,
    required this.serviceName,
    required this.serviceNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meshUid': meshUid,
      'project': ?project,
      'serviceName': serviceName,
      'serviceNamespace': serviceNamespace,
    };
  }

  factory GetMeshIstioServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetMeshIstioServiceArgs(
      meshUid: pulumi.Input.fromValue(map['meshUid'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      serviceNamespace: pulumi.Input.fromValue(map['serviceNamespace'] as String),
    );
  }
}

