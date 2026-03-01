// ignore_for_file: unused_element, unnecessary_cast


/// GKE Service. The "service" here represents a Kubernetes service object (https://kubernetes.io/docs/concepts/services-networking/service). The field names correspond to the resource labels on k8s_service monitored resources (https://cloud.google.com/monitoring/api/resources#tag_k8s_service).
class GkeServiceResponse {
  /// The name of the parent cluster.
  final String clusterName;
  /// The location of the parent cluster. This may be a zone or region.
  final String location;
  /// The name of the parent namespace.
  final String namespaceName;
  /// The project this resource lives in. For legacy services migrated from the Custom type, this may be a distinct project from the one parenting the service itself.
  final String project;
  /// The name of this service.
  final String serviceName;

  /// Creates a new [GkeServiceResponse].
  /// [clusterName] The name of the parent cluster.
  /// [location] The location of the parent cluster. This may be a zone or region.
  /// [namespaceName] The name of the parent namespace.
  /// [project] The project this resource lives in. For legacy services migrated from the Custom type, this may be a distinct project from the one parenting the service itself.
  /// [serviceName] The name of this service.
  GkeServiceResponse({
    required this.clusterName,
    required this.location,
    required this.namespaceName,
    required this.project,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'location': location,
      'namespaceName': namespaceName,
      'project': project,
      'serviceName': serviceName,
    };
  }

  factory GkeServiceResponse.fromMap(Map<String, dynamic> map) {
    return GkeServiceResponse(
      clusterName: map['clusterName'] as String,
      location: map['location'] as String,
      namespaceName: map['namespaceName'] as String,
      project: map['project'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

