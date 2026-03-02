// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Fleet is the fleet configuration for the cluster.
class FleetResponse {
  /// [Output only] The full resource name of the registered fleet membership of the cluster, in the format `//gkehub.googleapis.com/projects/*/locations/*/memberships/*`.
  final pulumi.Input<String> membership;
  /// [Output only] Whether the cluster has been registered through the fleet API.
  final pulumi.Input<bool> preRegistered;
  /// The Fleet host project(project ID or project number) where this cluster will be registered to. This field cannot be changed after the cluster has been registered.
  final pulumi.Input<String> project;

  /// Creates a new [FleetResponse].
  /// [membership] [Output only] The full resource name of the registered fleet membership of the cluster, in the format `//gkehub.googleapis.com/projects/*/locations/*/memberships/*`.
  /// [preRegistered] [Output only] Whether the cluster has been registered through the fleet API.
  /// [project] The Fleet host project(project ID or project number) where this cluster will be registered to. This field cannot be changed after the cluster has been registered.
  FleetResponse({
    required this.membership,
    required this.preRegistered,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'membership': membership,
      'preRegistered': preRegistered,
      'project': project,
    };
  }

  factory FleetResponse.fromMap(Map<String, dynamic> map) {
    return FleetResponse(
      membership: (map['membership'] as String).input(),
      preRegistered: (map['preRegistered'] as bool).input(),
      project: (map['project'] as String).input(),
    );
  }
}

