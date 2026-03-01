// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1alpha_binding_gkehub_v1alpha_args_doc}
/// The set of arguments for Binding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha_binding_gkehub_v1alpha_args_doc}
class BindingGkehubV1alphaArgs {
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

  /// Creates a new [BindingGkehubV1alphaArgs].
  /// [labels] Optional. Labels for this MembershipBinding.
  /// [location] Optional.
  /// [membershipBindingId] Required. The ID to use for the MembershipBinding.
  /// [membershipId] Required.
  /// [name] The resource name for the membershipbinding itself `projects/{project}/locations/{location}/memberships/{membership}/bindings/{membershipbinding}`
  /// [project] Optional.
  /// [scope] A Scope resource name in the format `projects/*/locations/*/scopes/*`.
  BindingGkehubV1alphaArgs({
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    required pulumi.Output<String> membershipBindingId,
    required pulumi.Output<String> membershipId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? scope,
  }) :
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      membershipBindingId = pulumi.Input.asInput<String>(membershipBindingId),
      membershipId = pulumi.Input.asInput<String>(membershipId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      scope = pulumi.Input.asOptionalInput<String>(scope);

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

  factory BindingGkehubV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return BindingGkehubV1alphaArgs(
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      membershipBindingId: pulumi.Output.create<String>(map['membershipBindingId'] as String),
      membershipId: pulumi.Output.create<String>(map['membershipId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

