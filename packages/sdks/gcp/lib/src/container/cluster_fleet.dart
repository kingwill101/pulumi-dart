// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterFleet {
  /// The resource name of the fleet Membership resource associated to this cluster with format `//gkehub.googleapis.com/projects/{{project}}/locations/{{location}}/memberships/{{name}}`. See the official doc for [fleet management](https://cloud.google.com/kubernetes-engine/docs/fleets-overview).
  final pulumi.Input<String>? membership;
  /// The short name of the fleet membership, extracted from `fleet.0.membership`. You can use this field to configure `membershipId` under google_gkehub_feature_membership.
  final pulumi.Input<String>? membershipId;
  /// The location of the fleet membership,  extracted from `fleet.0.membership`. You can use this field to configure `membershipLocation` under google_gkehub_feature_membership.
  final pulumi.Input<String>? membershipLocation;
  /// Sets the membership type of the cluster.  Available option is `LIGHTWEIGHT` to support only lightweight compatible features.  If unspecified, the membershipType will be a regular membership that supports all features.
  final pulumi.Input<String>? membershipType;
  /// Whether the cluster has been registered via the fleet API.
  final pulumi.Input<bool>? preRegistered;
  /// The name of the Fleet host project where this cluster will be registered.
  final pulumi.Input<String>? project;

  /// Creates a new [ClusterFleet].
  /// [membership] The resource name of the fleet Membership resource associated to this cluster with format `//gkehub.googleapis.com/projects/{{project}}/locations/{{location}}/memberships/{{name}}`. See the official doc for [fleet management](https://cloud.google.com/kubernetes-engine/docs/fleets-overview).
  /// [membershipId] The short name of the fleet membership, extracted from `fleet.0.membership`. You can use this field to configure `membershipId` under google_gkehub_feature_membership.
  /// [membershipLocation] The location of the fleet membership,  extracted from `fleet.0.membership`. You can use this field to configure `membershipLocation` under google_gkehub_feature_membership.
  /// [membershipType] Sets the membership type of the cluster.  Available option is `LIGHTWEIGHT` to support only lightweight compatible features.  If unspecified, the membershipType will be a regular membership that supports all features.
  /// [preRegistered] Whether the cluster has been registered via the fleet API.
  /// [project] The name of the Fleet host project where this cluster will be registered.
  const ClusterFleet({
    this.membership,
    this.membershipId,
    this.membershipLocation,
    this.membershipType,
    this.preRegistered,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'membership': ?membership,
      'membershipId': ?membershipId,
      'membershipLocation': ?membershipLocation,
      'membershipType': ?membershipType,
      'preRegistered': ?preRegistered,
      'project': ?project,
    };
  }

  factory ClusterFleet.fromMap(Map<String, dynamic> map) {
    return ClusterFleet(
      membership: (() { final guardedValue = map['membership']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      membershipId: (() { final guardedValue = map['membershipId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      membershipLocation: (() { final guardedValue = map['membershipLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      membershipType: (() { final guardedValue = map['membershipType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preRegistered: (() { final guardedValue = map['preRegistered']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
