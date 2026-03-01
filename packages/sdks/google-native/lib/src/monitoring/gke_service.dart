// ignore_for_file: unused_element, unnecessary_cast


/// GKE Service. The "service" here represents a Kubernetes service object (https://kubernetes.io/docs/concepts/services-networking/service). The field names correspond to the resource labels on k8s_service monitored resources (https://cloud.google.com/monitoring/api/resources#tag_k8s_service).
class GkeService {
  /// The name of the parent cluster.
  final String? clusterName;
  /// The location of the parent cluster. This may be a zone or region.
  final String? location;
  /// The name of the parent namespace.
  final String? namespaceName;
  /// The name of this service.
  final String? serviceName;

  /// Creates a new [GkeService].
  /// [clusterName] The name of the parent cluster.
  /// [location] The location of the parent cluster. This may be a zone or region.
  /// [namespaceName] The name of the parent namespace.
  /// [serviceName] The name of this service.
  GkeService({
    this.clusterName,
    this.location,
    this.namespaceName,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'location': ?location,
      'namespaceName': ?namespaceName,
      'serviceName': ?serviceName,
    };
  }

  factory GkeService.fromMap(Map<String, dynamic> map) {
    return GkeService(
      clusterName: map['clusterName'] == null ? null : map['clusterName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      namespaceName: map['namespaceName'] == null ? null : map['namespaceName'] as String,
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
    );
  }
}

