// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A GKE Workload (Deployment, StatefulSet, etc). The field names correspond to the metadata labels on monitored resources that fall under a workload (for example, k8s_container or k8s_pod).
class GkeWorkloadResponse {
  /// The name of the parent cluster.
  final pulumi.Input<String> clusterName;
  /// The location of the parent cluster. This may be a zone or region.
  final pulumi.Input<String> location;
  /// The name of the parent namespace.
  final pulumi.Input<String> namespaceName;
  /// The project this resource lives in. For legacy services migrated from the Custom type, this may be a distinct project from the one parenting the service itself.
  final pulumi.Input<String> project;
  /// The name of this workload.
  final pulumi.Input<String> topLevelControllerName;
  /// The type of this workload (for example, "Deployment" or "DaemonSet")
  final pulumi.Input<String> topLevelControllerType;

  /// Creates a new [GkeWorkloadResponse].
  /// [clusterName] The name of the parent cluster.
  /// [location] The location of the parent cluster. This may be a zone or region.
  /// [namespaceName] The name of the parent namespace.
  /// [project] The project this resource lives in. For legacy services migrated from the Custom type, this may be a distinct project from the one parenting the service itself.
  /// [topLevelControllerName] The name of this workload.
  /// [topLevelControllerType] The type of this workload (for example, "Deployment" or "DaemonSet")
  const GkeWorkloadResponse({
    required this.clusterName,
    required this.location,
    required this.namespaceName,
    required this.project,
    required this.topLevelControllerName,
    required this.topLevelControllerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'location': location,
      'namespaceName': namespaceName,
      'project': project,
      'topLevelControllerName': topLevelControllerName,
      'topLevelControllerType': topLevelControllerType,
    };
  }

  factory GkeWorkloadResponse.fromMap(Map<String, dynamic> map) {
    return GkeWorkloadResponse(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      topLevelControllerName: pulumi.Input.fromValue(map['topLevelControllerName'] as String),
      topLevelControllerType: pulumi.Input.fromValue(map['topLevelControllerType'] as String),
    );
  }
}

