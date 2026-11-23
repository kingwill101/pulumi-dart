// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_platform_custom_model_active_deployment_endpoint.dart';

class AgentPlatformCustomModelActiveDeployment {
  /// Timestamp when the deployment was created.
  final pulumi.Input<String?>? createdAt;
  /// Endpoint URLs exposed by the deployment.
  final pulumi.Input<List<AgentPlatformCustomModelActiveDeploymentEndpoint>?>? endpoints;
  /// ID of the dedicated inference deployment.
  final pulumi.Input<String?>? id;
  /// Name of the dedicated inference deployment.
  final pulumi.Input<String?>? name;
  /// Region slug of the dedicated inference deployment.
  final pulumi.Input<String?>? regionSlug;
  /// Current state of the deployment.
  final pulumi.Input<String?>? state;
  /// Timestamp when the deployment was last updated.
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [AgentPlatformCustomModelActiveDeployment].
  /// [createdAt] Timestamp when the deployment was created.
  /// [endpoints] Endpoint URLs exposed by the deployment.
  /// [id] ID of the dedicated inference deployment.
  /// [name] Name of the dedicated inference deployment.
  /// [regionSlug] Region slug of the dedicated inference deployment.
  /// [state] Current state of the deployment.
  /// [updatedAt] Timestamp when the deployment was last updated.
  const AgentPlatformCustomModelActiveDeployment({
    this.createdAt,
    this.endpoints,
    this.id,
    this.name,
    this.regionSlug,
    this.state,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<AgentPlatformCustomModelActiveDeploymentEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<AgentPlatformCustomModelActiveDeploymentEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'name': ?name,
      'regionSlug': ?regionSlug,
      'state': ?state,
      'updatedAt': ?updatedAt,
    };
  }

  factory AgentPlatformCustomModelActiveDeployment.fromMap(Map<String, dynamic> map) {
    return AgentPlatformCustomModelActiveDeployment(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentPlatformCustomModelActiveDeploymentEndpoint>(guardedValue, (value) => AgentPlatformCustomModelActiveDeploymentEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionSlug: (() { final guardedValue = map['regionSlug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
