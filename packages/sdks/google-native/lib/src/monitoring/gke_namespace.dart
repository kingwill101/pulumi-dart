// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GKE Namespace. The field names correspond to the resource metadata labels on monitored resources that fall under a namespace (for example, k8s_container or k8s_pod).
class GkeNamespace {
  /// The name of the parent cluster.
  final pulumi.Input<String>? clusterName;
  /// The location of the parent cluster. This may be a zone or region.
  final pulumi.Input<String>? location;
  /// The name of this namespace.
  final pulumi.Input<String>? namespaceName;

  /// Creates a new [GkeNamespace].
  /// [clusterName] The name of the parent cluster.
  /// [location] The location of the parent cluster. This may be a zone or region.
  /// [namespaceName] The name of this namespace.
  GkeNamespace({
    this.clusterName,
    this.location,
    this.namespaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'location': ?location,
      'namespaceName': ?namespaceName,
    };
  }

  factory GkeNamespace.fromMap(Map<String, dynamic> map) {
    return GkeNamespace(
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

