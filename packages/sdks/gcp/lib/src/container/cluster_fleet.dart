// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterFleet {
  /// Full resource name of the registered fleet membership of the cluster.
  final pulumi.Input<String>? membership;

  /// Short name of the fleet membership, for example "member-1".
  final pulumi.Input<String>? membershipId;

  /// Location of the fleet membership, for example "us-central1".
  final pulumi.Input<String>? membershipLocation;

  /// Sets the membership type of the cluster.  Available option is `LIGHTWEIGHT` to support only lightweight compatible features.  If unspecified, the membership_type will be a regular membership that supports all features.
  final pulumi.Input<String>? membershipType;

  /// Whether the cluster has been registered via the fleet API.
  final pulumi.Input<bool>? preRegistered;

  /// The name of the Fleet host project where this cluster will be registered.
  final pulumi.Input<String>? project;

  /// Creates a new [ClusterFleet].
  /// [membership] Full resource name of the registered fleet membership of the cluster.
  /// [membershipId] Short name of the fleet membership, for example "member-1".
  /// [membershipLocation] Location of the fleet membership, for example "us-central1".
  /// [membershipType] Sets the membership type of the cluster.  Available option is `LIGHTWEIGHT` to support only lightweight compatible features.  If unspecified, the membership_type will be a regular membership that supports all features.
  /// [preRegistered] Whether the cluster has been registered via the fleet API.
  /// [project] The name of the Fleet host project where this cluster will be registered.
  ClusterFleet({
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
      membership: (() {
        final guardedValue = map['membership'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      membershipId: (() {
        final guardedValue = map['membershipId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      membershipLocation: (() {
        final guardedValue = map['membershipLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      membershipType: (() {
        final guardedValue = map['membershipType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preRegistered: (() {
        final guardedValue = map['preRegistered'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
