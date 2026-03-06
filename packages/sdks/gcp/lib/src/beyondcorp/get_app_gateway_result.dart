// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_gateway_allocated_connection.dart';

/// Result data returned by getAppGateway.
class GetAppGatewayResult {
  final List<GetAppGatewayAllocatedConnection> allocatedConnections;
  final String displayName;
  final Map<String, String> effectiveLabels;
  final String hostType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String? region;
  final String state;
  final String type;
  final String uri;

  /// Creates a new [GetAppGatewayResult].
  /// [allocatedConnections] Required.
  /// [displayName] Required.
  /// [effectiveLabels] Required.
  /// [hostType] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [region] Optional.
  /// [state] Required.
  /// [type] Required.
  /// [uri] Required.
  const GetAppGatewayResult({
    required this.allocatedConnections,
    required this.displayName,
    required this.effectiveLabels,
    required this.hostType,
    required this.id,
    required this.labels,
    required this.name,
    this.project,
    required this.pulumiLabels,
    this.region,
    required this.state,
    required this.type,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedConnections': pulumi.Input.encodeList<GetAppGatewayAllocatedConnection, Map<String, dynamic>>(allocatedConnections, (value) => value.toMap()),
      'displayName': displayName,
      'effectiveLabels': effectiveLabels,
      'hostType': hostType,
      'id': id,
      'labels': labels,
      'name': name,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'region': ?region,
      'state': state,
      'type': type,
      'uri': uri,
    };
  }

  factory GetAppGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetAppGatewayResult(
      allocatedConnections: pulumi.Input.decodeList<GetAppGatewayAllocatedConnection>(map['allocatedConnections']!, (value) => GetAppGatewayAllocatedConnection.fromMap((value as Map).cast<String, dynamic>())),
      displayName: map['displayName'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      hostType: map['hostType'] as String,
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: map['state'] as String,
      type: map['type'] as String,
      uri: map['uri'] as String,
    );
  }
}

