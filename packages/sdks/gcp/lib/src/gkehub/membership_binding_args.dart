// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_membership_binding_membership_binding_args_doc}
/// The set of arguments for MembershipBinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_membership_binding_membership_binding_args_doc}
class MembershipBindingArgs {
  /// Labels for this Membership binding.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Location of the membership
  final pulumi.Input<String> location;
  /// The client-provided identifier of the membership binding.
  final pulumi.Input<String> membershipBindingId;
  /// Id of the membership
  final pulumi.Input<String> membershipId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A Workspace resource name in the format
  /// `projects/*/locations/*/scopes/*`.
  final pulumi.Input<String> scope;

  /// Creates a new [MembershipBindingArgs].
  /// [labels] Labels for this Membership binding.
  /// [location] Location of the membership
  /// [membershipBindingId] The client-provided identifier of the membership binding.
  /// [membershipId] Id of the membership
  /// [project] The ID of the project in which the resource belongs.
  /// [scope] A Workspace resource name in the format
  const MembershipBindingArgs({
    this.labels,
    required this.location,
    required this.membershipBindingId,
    required this.membershipId,
    this.project,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'location': location,
      'membershipBindingId': membershipBindingId,
      'membershipId': membershipId,
      'project': ?project,
      'scope': scope,
    };
  }

  factory MembershipBindingArgs.fromMap(Map<String, dynamic> map) {
    return MembershipBindingArgs(
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      membershipBindingId: pulumi.Input.fromValue(map['membershipBindingId'] as String),
      membershipId: pulumi.Input.fromValue(map['membershipId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}

