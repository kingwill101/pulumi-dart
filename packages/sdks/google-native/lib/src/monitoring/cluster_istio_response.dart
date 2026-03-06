// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Istio service scoped to a single Kubernetes cluster. Learn more at https://istio.io. Clusters running OSS Istio will have their services ingested as this type.
class ClusterIstioResponse {
  /// The name of the Kubernetes cluster in which this Istio service is defined. Corresponds to the cluster_name resource label in k8s_cluster resources.
  final pulumi.Input<String> clusterName;
  /// The location of the Kubernetes cluster in which this Istio service is defined. Corresponds to the location resource label in k8s_cluster resources.
  final pulumi.Input<String> location;
  /// The name of the Istio service underlying this service. Corresponds to the destination_service_name metric label in Istio metrics.
  final pulumi.Input<String> serviceName;
  /// The namespace of the Istio service underlying this service. Corresponds to the destination_service_namespace metric label in Istio metrics.
  final pulumi.Input<String> serviceNamespace;

  /// Creates a new [ClusterIstioResponse].
  /// [clusterName] The name of the Kubernetes cluster in which this Istio service is defined. Corresponds to the cluster_name resource label in k8s_cluster resources.
  /// [location] The location of the Kubernetes cluster in which this Istio service is defined. Corresponds to the location resource label in k8s_cluster resources.
  /// [serviceName] The name of the Istio service underlying this service. Corresponds to the destination_service_name metric label in Istio metrics.
  /// [serviceNamespace] The namespace of the Istio service underlying this service. Corresponds to the destination_service_namespace metric label in Istio metrics.
  const ClusterIstioResponse({
    required this.clusterName,
    required this.location,
    required this.serviceName,
    required this.serviceNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'location': location,
      'serviceName': serviceName,
      'serviceNamespace': serviceNamespace,
    };
  }

  factory ClusterIstioResponse.fromMap(Map<String, dynamic> map) {
    return ClusterIstioResponse(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      serviceNamespace: pulumi.Input.fromValue(map['serviceNamespace'] as String),
    );
  }
}

