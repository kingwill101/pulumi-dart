// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GKE Service. The "service" here represents a Kubernetes service object (https://kubernetes.io/docs/concepts/services-networking/service). The field names correspond to the resource labels on k8s_service monitored resources (https://cloud.google.com/monitoring/api/resources#tag_k8s_service).
class GkeServiceResponse {
  /// The name of the parent cluster.
  final pulumi.Input<String> clusterName;
  /// The location of the parent cluster. This may be a zone or region.
  final pulumi.Input<String> location;
  /// The name of the parent namespace.
  final pulumi.Input<String> namespaceName;
  /// The project this resource lives in. For legacy services migrated from the Custom type, this may be a distinct project from the one parenting the service itself.
  final pulumi.Input<String> project;
  /// The name of this service.
  final pulumi.Input<String> serviceName;

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
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}

