// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workspace_private_endpoint_connection_connection.dart';

/// Result data returned by getWorkspacePrivateEndpointConnection.
class GetWorkspacePrivateEndpointConnectionResult {
  /// A `connections` block as documented below.
  final List<GetWorkspacePrivateEndpointConnectionConnection>? connections;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The resource ID of the Private Endpoint.
  final String? privateEndpointId;
  /// The resource ID of the Databricks Workspace.
  final String? workspaceId;

  /// Creates a new [GetWorkspacePrivateEndpointConnectionResult].
  /// [connections] A `connections` block as documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [privateEndpointId] The resource ID of the Private Endpoint.
  /// [workspaceId] The resource ID of the Databricks Workspace.
  const GetWorkspacePrivateEndpointConnectionResult({
    this.connections,
    this.id,
    this.privateEndpointId,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': ?(() { final guardedValue = connections; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkspacePrivateEndpointConnectionConnection, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'privateEndpointId': ?privateEndpointId,
      'workspaceId': ?workspaceId,
    };
  }

  factory GetWorkspacePrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspacePrivateEndpointConnectionResult(
      connections: (() { final guardedValue = map['connections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkspacePrivateEndpointConnectionConnection>(guardedValue, (value) => GetWorkspacePrivateEndpointConnectionConnection.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointId: (() { final guardedValue = map['privateEndpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
