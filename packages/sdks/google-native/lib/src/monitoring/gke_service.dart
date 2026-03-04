// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GKE Service. The "service" here represents a Kubernetes service object (https://kubernetes.io/docs/concepts/services-networking/service). The field names correspond to the resource labels on k8s_service monitored resources (https://cloud.google.com/monitoring/api/resources#tag_k8s_service).
class GkeService {
  /// The name of the parent cluster.
  final pulumi.Input<String>? clusterName;

  /// The location of the parent cluster. This may be a zone or region.
  final pulumi.Input<String>? location;

  /// The name of the parent namespace.
  final pulumi.Input<String>? namespaceName;

  /// The name of this service.
  final pulumi.Input<String>? serviceName;

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
      clusterName: (() {
        final guardedValue = map['clusterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespaceName: (() {
        final guardedValue = map['namespaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceName: (() {
        final guardedValue = map['serviceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
