// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1beta_binding_gkehub_v1beta_args_doc}
/// The set of arguments for Binding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1beta_binding_gkehub_v1beta_args_doc}
class BindingGkehubV1betaArgs {
  /// Optional. Labels for this MembershipBinding.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Required. The ID to use for the MembershipBinding.
  final pulumi.Input<String> membershipBindingId;
  final pulumi.Input<String> membershipId;
  /// The resource name for the membershipbinding itself `projects/{project}/locations/{location}/memberships/{membership}/bindings/{membershipbinding}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// A Scope resource name in the format `projects/*/locations/*/scopes/*`.
  final pulumi.Input<String>? scope;

  /// Creates a new [BindingGkehubV1betaArgs].
  /// [labels] Optional. Labels for this MembershipBinding.
  /// [location] Optional.
  /// [membershipBindingId] Required. The ID to use for the MembershipBinding.
  /// [membershipId] Required.
  /// [name] The resource name for the membershipbinding itself `projects/{project}/locations/{location}/memberships/{membership}/bindings/{membershipbinding}`
  /// [project] Optional.
  /// [scope] A Scope resource name in the format `projects/*/locations/*/scopes/*`.
  BindingGkehubV1betaArgs({
    this.labels,
    this.location,
    required this.membershipBindingId,
    required this.membershipId,
    this.name,
    this.project,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'location': ?location,
      'membershipBindingId': membershipBindingId,
      'membershipId': membershipId,
      'name': ?name,
      'project': ?project,
      'scope': ?scope,
    };
  }

  factory BindingGkehubV1betaArgs.fromMap(Map<String, dynamic> map) {
    return BindingGkehubV1betaArgs(
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      membershipBindingId: (map['membershipBindingId'] as String).input(),
      membershipId: (map['membershipId'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
    );
  }
}

