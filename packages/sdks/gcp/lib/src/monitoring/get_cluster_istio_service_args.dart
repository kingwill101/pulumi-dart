// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_get_cluster_istio_service_get_cluster_istio_service_args_doc}
/// Arguments for getClusterIstioService.
/// {@endtemplate}
/// {@macro pulumi_monitoring_get_cluster_istio_service_get_cluster_istio_service_args_doc}
class GetClusterIstioServiceArgs {
  /// The name of the Kubernetes cluster in which this Istio service
  /// is defined. Corresponds to the clusterName resource label in k8s_cluster resources.
  final pulumi.Input<String> clusterName;
  /// The location of the Kubernetes cluster in which this Istio service
  /// is defined. Corresponds to the location resource label in k8s_cluster resources.
  final pulumi.Input<String> location;
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

  /// Creates a new [GetClusterIstioServiceArgs].
  /// [clusterName] The name of the Kubernetes cluster in which this Istio service
  /// [location] The location of the Kubernetes cluster in which this Istio service
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceName] The name of the Istio service underlying this service.
  /// [serviceNamespace] The namespace of the Istio service underlying this service.
  GetClusterIstioServiceArgs({
    required this.clusterName,
    required this.location,
    this.project,
    required this.serviceName,
    required this.serviceNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'location': location,
      'project': ?project,
      'serviceName': serviceName,
      'serviceNamespace': serviceNamespace,
    };
  }

  factory GetClusterIstioServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterIstioServiceArgs(
      clusterName: (map['clusterName'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      serviceNamespace: (map['serviceNamespace'] as String).input(),
    );
  }
}

