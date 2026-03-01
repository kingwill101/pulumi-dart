// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1alpha2_get_membership_gkehub_v1alpha2_args_doc}
/// Arguments for getMembership.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha2_get_membership_gkehub_v1alpha2_args_doc}
class GetMembershipGkehubV1alpha2Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> membershipId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMembershipGkehubV1alpha2Args].
  /// [location] Required.
  /// [membershipId] Required.
  /// [project] Optional.
  GetMembershipGkehubV1alpha2Args({
    required pulumi.Output<String> location,
    required pulumi.Output<String> membershipId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      membershipId = pulumi.Input.asInput<String>(membershipId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'membershipId': membershipId,
      'project': ?project,
    };
  }

  factory GetMembershipGkehubV1alpha2Args.fromMap(Map<String, dynamic> map) {
    return GetMembershipGkehubV1alpha2Args(
      location: pulumi.Output.create<String>(map['location'] as String),
      membershipId: pulumi.Output.create<String>(map['membershipId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

