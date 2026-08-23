// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GKE Namespace. The field names correspond to the resource metadata labels on monitored resources that fall under a namespace (for example, k8s_container or k8s_pod).
class GkeNamespaceResponse {
  /// The name of the parent cluster.
  final pulumi.Input<String> clusterName;
  /// The location of the parent cluster. This may be a zone or region.
  final pulumi.Input<String> location;
  /// The name of this namespace.
  final pulumi.Input<String> namespaceName;
  /// The project this resource lives in. For legacy services migrated from the Custom type, this may be a distinct project from the one parenting the service itself.
  final pulumi.Input<String> project;

  /// Creates a new [GkeNamespaceResponse].
  /// [clusterName] The name of the parent cluster.
  /// [location] The location of the parent cluster. This may be a zone or region.
  /// [namespaceName] The name of this namespace.
  /// [project] The project this resource lives in. For legacy services migrated from the Custom type, this may be a distinct project from the one parenting the service itself.
  const GkeNamespaceResponse({
    required this.clusterName,
    required this.location,
    required this.namespaceName,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'location': location,
      'namespaceName': namespaceName,
      'project': project,
    };
  }

  factory GkeNamespaceResponse.fromMap(Map<String, dynamic> map) {
    return GkeNamespaceResponse(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}
