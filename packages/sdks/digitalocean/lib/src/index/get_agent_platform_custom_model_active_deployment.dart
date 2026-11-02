// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_custom_model_active_deployment_endpoint.dart';

class GetAgentPlatformCustomModelActiveDeployment {
  /// Timestamp when the deployment was created.
  final pulumi.Input<String> createdAt;
  /// Endpoint URLs exposed by the deployment.
  final pulumi.Input<List<GetAgentPlatformCustomModelActiveDeploymentEndpoint>> endpoints;
  /// ID of the dedicated inference deployment.
  final pulumi.Input<String> id;
  /// Name of the dedicated inference deployment.
  final pulumi.Input<String> name;
  /// Region slug of the dedicated inference deployment.
  final pulumi.Input<String> regionSlug;
  /// Current state of the deployment.
  final pulumi.Input<String> state;
  /// Timestamp when the deployment was last updated.
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetAgentPlatformCustomModelActiveDeployment].
  /// [createdAt] Timestamp when the deployment was created.
  /// [endpoints] Endpoint URLs exposed by the deployment.
  /// [id] ID of the dedicated inference deployment.
  /// [name] Name of the dedicated inference deployment.
  /// [regionSlug] Region slug of the dedicated inference deployment.
  /// [state] Current state of the deployment.
  /// [updatedAt] Timestamp when the deployment was last updated.
  const GetAgentPlatformCustomModelActiveDeployment({
    required this.createdAt,
    required this.endpoints,
    required this.id,
    required this.name,
    required this.regionSlug,
    required this.state,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'endpoints': pulumi.Input.mapInputValue<List<GetAgentPlatformCustomModelActiveDeploymentEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<GetAgentPlatformCustomModelActiveDeploymentEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'name': name,
      'regionSlug': regionSlug,
      'state': state,
      'updatedAt': updatedAt,
    };
  }

  factory GetAgentPlatformCustomModelActiveDeployment.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformCustomModelActiveDeployment(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      endpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformCustomModelActiveDeploymentEndpoint>(map['endpoints']!, (value) => GetAgentPlatformCustomModelActiveDeploymentEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      regionSlug: pulumi.Input.fromValue(map['regionSlug'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
