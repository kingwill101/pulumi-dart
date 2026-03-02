// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_get_membership_get_membership_args_doc}
/// Arguments for getMembership.
/// {@endtemplate}
/// {@macro pulumi_gkehub_get_membership_get_membership_args_doc}
class GetMembershipArgs {
  /// The location for the GKE Hub Membership.
  /// Currently only `global` is supported.
  final pulumi.Input<String> location;
  /// The GKE Hub Membership id or GKE Cluster's name.
  final pulumi.Input<String> membershipId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetMembershipArgs].
  /// [location] The location for the GKE Hub Membership.
  /// [membershipId] The GKE Hub Membership id or GKE Cluster's name.
  /// [project] The ID of the project in which the resource belongs.
  GetMembershipArgs({
    required this.location,
    required this.membershipId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'membershipId': membershipId,
      'project': ?project,
    };
  }

  factory GetMembershipArgs.fromMap(Map<String, dynamic> map) {
    return GetMembershipArgs(
      location: (map['location'] as String).input(),
      membershipId: (map['membershipId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

