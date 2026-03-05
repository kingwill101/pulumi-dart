// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A GKE Workload (Deployment, StatefulSet, etc). The field names correspond to the metadata labels on monitored resources that fall under a workload (for example, k8s_container or k8s_pod).
class GkeWorkload {
  /// The name of the parent cluster.
  final pulumi.Input<String>? clusterName;
  /// The location of the parent cluster. This may be a zone or region.
  final pulumi.Input<String>? location;
  /// The name of the parent namespace.
  final pulumi.Input<String>? namespaceName;
  /// The name of this workload.
  final pulumi.Input<String>? topLevelControllerName;
  /// The type of this workload (for example, "Deployment" or "DaemonSet")
  final pulumi.Input<String>? topLevelControllerType;

  /// Creates a new [GkeWorkload].
  /// [clusterName] The name of the parent cluster.
  /// [location] The location of the parent cluster. This may be a zone or region.
  /// [namespaceName] The name of the parent namespace.
  /// [topLevelControllerName] The name of this workload.
  /// [topLevelControllerType] The type of this workload (for example, "Deployment" or "DaemonSet")
  GkeWorkload({
    this.clusterName,
    this.location,
    this.namespaceName,
    this.topLevelControllerName,
    this.topLevelControllerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'location': ?location,
      'namespaceName': ?namespaceName,
      'topLevelControllerName': ?topLevelControllerName,
      'topLevelControllerType': ?topLevelControllerType,
    };
  }

  factory GkeWorkload.fromMap(Map<String, dynamic> map) {
    return GkeWorkload(
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topLevelControllerName: (() { final guardedValue = map['topLevelControllerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topLevelControllerType: (() { final guardedValue = map['topLevelControllerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

