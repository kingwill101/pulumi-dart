// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_gateway_allocated_connection.dart';

/// Result data returned by getAppGateway.
class GetAppGatewayResult {
  final List<GetAppGatewayAllocatedConnection>? allocatedConnections;
  final String? deletionPolicy;
  final String? displayName;
  final Map<String, String>? effectiveLabels;
  final String? hostType;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? name;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? region;
  final String? state;
  final String? type;
  final String? uri;

  /// Creates a new [GetAppGatewayResult].
  /// [allocatedConnections] Optional.
  /// [deletionPolicy] Optional.
  /// [displayName] Optional.
  /// [effectiveLabels] Optional.
  /// [hostType] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [region] Optional.
  /// [state] Optional.
  /// [type] Optional.
  /// [uri] Optional.
  const GetAppGatewayResult({
    this.allocatedConnections,
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.hostType,
    this.id,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.region,
    this.state,
    this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedConnections': ?(() { final guardedValue = allocatedConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAppGatewayAllocatedConnection, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'hostType': ?hostType,
      'id': ?id,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'state': ?state,
      'type': ?type,
      'uri': ?uri,
    };
  }

  factory GetAppGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetAppGatewayResult(
      allocatedConnections: (() { final guardedValue = map['allocatedConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAppGatewayAllocatedConnection>(guardedValue, (value) => GetAppGatewayAllocatedConnection.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      hostType: (() { final guardedValue = map['hostType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
