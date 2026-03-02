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
    this.condition,
    this.etag,
    this.members,
    this.orgId,
    this.role,
  });

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
      condition: map['condition'] == null ? null : (IAMBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      members: map['members'] == null ? null : ((map['members'] as List).cast<String>()).input(),
      orgId: map['orgId'] == null ? null : (map['orgId'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
    );
  }
}

