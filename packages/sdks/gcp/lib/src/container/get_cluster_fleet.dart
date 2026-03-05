// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterFleet {
  /// Full resource name of the registered fleet membership of the cluster.
  final pulumi.Input<String> membership;
  /// Short name of the fleet membership, for example "member-1".
  final pulumi.Input<String> membershipId;
  /// Location of the fleet membership, for example "us-central1".
  final pulumi.Input<String> membershipLocation;
  /// The type of the cluster's fleet membership.
  final pulumi.Input<String> membershipType;
  /// Whether the cluster has been registered via the fleet API.
  final pulumi.Input<bool> preRegistered;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String> project;

  /// Creates a new [GetClusterFleet].
  /// [membership] Full resource name of the registered fleet membership of the cluster.
  /// [membershipId] Short name of the fleet membership, for example "member-1".
  /// [membershipLocation] Location of the fleet membership, for example "us-central1".
  /// [membershipType] The type of the cluster's fleet membership.
  /// [preRegistered] Whether the cluster has been registered via the fleet API.
  /// [project] The project in which the resource belongs. If it
  GetClusterFleet({
    required this.membership,
    required this.membershipId,
    required this.membershipLocation,
    required this.membershipType,
    required this.preRegistered,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'membership': membership,
      'membershipId': membershipId,
      'membershipLocation': membershipLocation,
      'membershipType': membershipType,
      'preRegistered': preRegistered,
      'project': project,
    };
  }

  factory GetClusterFleet.fromMap(Map<String, dynamic> map) {
    return GetClusterFleet(
      membership: pulumi.Input.fromValue(map['membership'] as String),
      membershipId: pulumi.Input.fromValue(map['membershipId'] as String),
      membershipLocation: pulumi.Input.fromValue(map['membershipLocation'] as String),
      membershipType: pulumi.Input.fromValue(map['membershipType'] as String),
      preRegistered: pulumi.Input.fromValue(map['preRegistered'] as bool),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}

