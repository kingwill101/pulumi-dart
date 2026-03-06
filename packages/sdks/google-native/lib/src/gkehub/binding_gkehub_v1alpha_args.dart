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
  const BindingGkehubV1alphaArgs({
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

  factory BindingGkehubV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return BindingGkehubV1alphaArgs(
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      membershipBindingId: pulumi.Input.fromValue(map['membershipBindingId'] as String),
      membershipId: pulumi.Input.fromValue(map['membershipId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

