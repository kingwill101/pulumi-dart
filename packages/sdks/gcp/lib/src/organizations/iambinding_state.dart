// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iambinding_condition.dart';

/// Input properties used for looking up and filtering IAMBinding resources.
class IAMBindingState {
  final pulumi.Input<IAMBindingCondition>? condition;
  /// (Computed) The etag of the organization's IAM policy.
  final pulumi.Input<String>? etag;
  /// A list of users that the role should apply to. For more details on format and restrictions see https://cloud.google.com/billing/reference/rest/v1/Policy#Binding
  final pulumi.Input<List<String>>? members;
  /// The numeric ID of the organization in which you want to create a custom role.
  final pulumi.Input<String>? orgId;
  /// The role that should be applied. Only one
  /// `gcp.organizations.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;

  /// Creates a new [IAMBindingState].
  /// [condition] Optional.
  /// [etag] (Computed) The etag of the organization's IAM policy.
  /// [members] A list of users that the role should apply to. For more details on format and restrictions see https://cloud.google.com/billing/reference/rest/v1/Policy#Binding
  /// [orgId] The numeric ID of the organization in which you want to create a custom role.
  /// [role] The role that should be applied. Only one
  IAMBindingState({
    pulumi.Output<IAMBindingCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<List<String>>? members,
    pulumi.Output<String>? orgId,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<IAMBindingCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      orgId = pulumi.Input.asOptionalInput<String>(orgId),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<IAMBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'members': ?members,
      'orgId': ?orgId,
      'role': ?role,
    };
  }

  factory IAMBindingState.fromMap(Map<String, dynamic> map) {
    return IAMBindingState(
      condition: map['condition'] == null ? null : pulumi.Output.create<IAMBindingCondition>(IAMBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

