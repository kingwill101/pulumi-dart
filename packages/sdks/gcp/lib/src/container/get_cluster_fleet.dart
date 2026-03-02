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
      membership: (map['membership'] as String).input(),
      membershipId: (map['membershipId'] as String).input(),
      membershipLocation: (map['membershipLocation'] as String).input(),
      membershipType: (map['membershipType'] as String).input(),
      preRegistered: (map['preRegistered'] as bool).input(),
      project: (map['project'] as String).input(),
    );
  }
}

