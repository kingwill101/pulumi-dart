// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_istio_service_telemetry.dart';

/// Result data returned by getClusterIstioService.
class GetClusterIstioServiceResult {
  final String? clusterName;
  final String? deletionPolicy;
  /// Name used for UI elements listing this (Monitoring) Service.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  /// The full REST resource name for this channel. The syntax is:
  /// `projects/[PROJECT_ID]/services/[SERVICE_ID]`.
  final String? name;
  final String? project;
  final String? serviceId;
  final String? serviceName;
  final String? serviceNamespace;
  /// Configuration for how to query telemetry on the Service. Structure is documented below.
  final List<GetClusterIstioServiceTelemetry>? telemetries;
  final Map<String, String>? userLabels;

  /// Creates a new [GetClusterIstioServiceResult].
  /// [clusterName] Optional.
  /// [deletionPolicy] Optional.
  /// [displayName] Name used for UI elements listing this (Monitoring) Service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] The full REST resource name for this channel. The syntax is:
  /// [project] Optional.
  /// [serviceId] Optional.
  /// [serviceName] Optional.
  /// [serviceNamespace] Optional.
  /// [telemetries] Configuration for how to query telemetry on the Service. Structure is documented below.
  /// [userLabels] Optional.
  const GetClusterIstioServiceResult({
    this.clusterName,
    this.deletionPolicy,
    this.displayName,
    this.id,
    this.location,
    this.name,
    this.project,
    this.serviceId,
    this.serviceName,
    this.serviceNamespace,
    this.telemetries,
    this.userLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serviceId': ?serviceId,
      'serviceName': ?serviceName,
      'serviceNamespace': ?serviceNamespace,
      'telemetries': ?(() { final guardedValue = telemetries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterIstioServiceTelemetry, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'userLabels': ?userLabels,
    };
  }

  factory GetClusterIstioServiceResult.fromMap(Map<String, dynamic> map) {
    return GetClusterIstioServiceResult(
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceNamespace: (() { final guardedValue = map['serviceNamespace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      telemetries: (() { final guardedValue = map['telemetries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterIstioServiceTelemetry>(guardedValue, (value) => GetClusterIstioServiceTelemetry.fromMap((value as Map).cast<String, dynamic>())); })(),
      userLabels: (() { final guardedValue = map['userLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
