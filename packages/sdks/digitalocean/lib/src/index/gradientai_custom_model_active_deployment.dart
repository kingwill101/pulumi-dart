// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_custom_model_active_deployment_endpoint.dart';

class GradientaiCustomModelActiveDeployment {
  /// Timestamp when the deployment was created.
  final pulumi.Input<String>? createdAt;
  /// Endpoint URLs exposed by the deployment.
  final pulumi.Input<List<GradientaiCustomModelActiveDeploymentEndpoint>>? endpoints;
  /// ID of the dedicated inference deployment.
  final pulumi.Input<String>? id;
  /// Name of the dedicated inference deployment.
  final pulumi.Input<String>? name;
  /// Region slug of the dedicated inference deployment.
  final pulumi.Input<String>? regionSlug;
  /// Current state of the deployment.
  final pulumi.Input<String>? state;
  /// Timestamp when the deployment was last updated.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [GradientaiCustomModelActiveDeployment].
  /// [createdAt] Timestamp when the deployment was created.
  /// [endpoints] Endpoint URLs exposed by the deployment.
  /// [id] ID of the dedicated inference deployment.
  /// [name] Name of the dedicated inference deployment.
  /// [regionSlug] Region slug of the dedicated inference deployment.
  /// [state] Current state of the deployment.
  /// [updatedAt] Timestamp when the deployment was last updated.
  const GradientaiCustomModelActiveDeployment({
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
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<GradientaiCustomModelActiveDeploymentEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<GradientaiCustomModelActiveDeploymentEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'name': ?name,
      'regionSlug': ?regionSlug,
      'state': ?state,
      'updatedAt': ?updatedAt,
    };
  }

  factory GradientaiCustomModelActiveDeployment.fromMap(Map<String, dynamic> map) {
    return GradientaiCustomModelActiveDeployment(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GradientaiCustomModelActiveDeploymentEndpoint>(guardedValue, (value) => GradientaiCustomModelActiveDeploymentEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionSlug: (() { final guardedValue = map['regionSlug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
