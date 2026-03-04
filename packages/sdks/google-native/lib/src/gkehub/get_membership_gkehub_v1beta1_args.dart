// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1beta1_get_membership_gkehub_v1beta1_args_doc}
/// Arguments for getMembership.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1beta1_get_membership_gkehub_v1beta1_args_doc}
class GetMembershipGkehubV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> membershipId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMembershipGkehubV1beta1Args].
  /// [location] Required.
  /// [membershipId] Required.
  /// [project] Optional.
  GetMembershipGkehubV1beta1Args({
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

  factory GetMembershipGkehubV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetMembershipGkehubV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      membershipId: pulumi.Input.fromValue(map['membershipId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
