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
  MembershipBindingArgs({
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    required pulumi.Output<String> membershipBindingId,
    required pulumi.Output<String> membershipId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> scope,
  }) :
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      membershipBindingId = pulumi.Input.asInput<String>(membershipBindingId),
      membershipId = pulumi.Input.asInput<String>(membershipId),
      project = pulumi.Input.asOptionalInput<String>(project),
      scope = pulumi.Input.asInput<String>(scope);

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
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      membershipBindingId: pulumi.Output.create<String>(map['membershipBindingId'] as String),
      membershipId: pulumi.Output.create<String>(map['membershipId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      scope: pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

