// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_connection_application_endpoint.dart';
import 'get_app_connection_gateway.dart';

/// Result data returned by getAppConnection.
class GetAppConnectionResult {
  final List<GetAppConnectionApplicationEndpoint>? applicationEndpoints;
  final List<String>? connectors;
  final String? deletionPolicy;
  final String? displayName;
  final Map<String, String>? effectiveLabels;
  final List<GetAppConnectionGateway>? gateways;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? name;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? region;
  final String? type;

  /// Creates a new [GetAppConnectionResult].
  /// [applicationEndpoints] Optional.
  /// [connectors] Optional.
  /// [deletionPolicy] Optional.
  /// [displayName] Optional.
  /// [effectiveLabels] Optional.
  /// [gateways] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [region] Optional.
  /// [type] Optional.
  const GetAppConnectionResult({
    this.applicationEndpoints,
    this.connectors,
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.gateways,
    this.id,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationEndpoints': ?(() { final guardedValue = applicationEndpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAppConnectionApplicationEndpoint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'connectors': ?connectors,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'gateways': ?(() { final guardedValue = gateways; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAppConnectionGateway, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'type': ?type,
    };
  }

  factory GetAppConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetAppConnectionResult(
      applicationEndpoints: (() { final guardedValue = map['applicationEndpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAppConnectionApplicationEndpoint>(guardedValue, (value) => GetAppConnectionApplicationEndpoint.fromMap((value as Map).cast<String, dynamic>())); })(),
      connectors: (() { final guardedValue = map['connectors']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      gateways: (() { final guardedValue = map['gateways']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAppConnectionGateway>(guardedValue, (value) => GetAppConnectionGateway.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
