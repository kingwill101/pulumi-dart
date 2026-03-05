// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_connection_application_endpoint.dart';
import 'get_app_connection_gateway.dart';

/// Result data returned by getAppConnection.
class GetAppConnectionResult {
  final List<GetAppConnectionApplicationEndpoint> applicationEndpoints;
  final List<String> connectors;
  final String displayName;
  final Map<String, String> effectiveLabels;
  final List<GetAppConnectionGateway> gateways;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String? region;
  final String type;

  /// Creates a new [GetAppConnectionResult].
  /// [applicationEndpoints] Required.
  /// [connectors] Required.
  /// [displayName] Required.
  /// [effectiveLabels] Required.
  /// [gateways] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [region] Optional.
  /// [type] Required.
  GetAppConnectionResult({
    required this.applicationEndpoints,
    required this.connectors,
    required this.displayName,
    required this.effectiveLabels,
    required this.gateways,
    required this.id,
    required this.labels,
    required this.name,
    this.project,
    required this.pulumiLabels,
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationEndpoints': pulumi.Input.encodeList<GetAppConnectionApplicationEndpoint, Map<String, dynamic>>(applicationEndpoints, (value) => value.toMap()),
      'connectors': connectors,
      'displayName': displayName,
      'effectiveLabels': effectiveLabels,
      'gateways': pulumi.Input.encodeList<GetAppConnectionGateway, Map<String, dynamic>>(gateways, (value) => value.toMap()),
      'id': id,
      'labels': labels,
      'name': name,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'region': ?region,
      'type': type,
    };
  }

  factory GetAppConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetAppConnectionResult(
      applicationEndpoints: pulumi.Input.decodeList<GetAppConnectionApplicationEndpoint>(map['applicationEndpoints']!, (value) => GetAppConnectionApplicationEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      connectors: (map['connectors'] as List).cast<String>(),
      displayName: map['displayName'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      gateways: pulumi.Input.decodeList<GetAppConnectionGateway>(map['gateways']!, (value) => GetAppConnectionGateway.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

