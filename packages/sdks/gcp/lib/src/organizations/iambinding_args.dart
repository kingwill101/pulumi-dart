// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iambinding_condition.dart';

/// {@template pulumi_organizations_i_ambinding_iambinding_args_doc}
/// The set of arguments for IAMBinding.
/// {@endtemplate}
/// {@macro pulumi_organizations_i_ambinding_iambinding_args_doc}
class IAMBindingArgs {
  final pulumi.Input<IAMBindingCondition>? condition;
  /// A list of users that the role should apply to. For more details on format and restrictions see https://cloud.google.com/billing/reference/rest/v1/Policy#Binding
  final pulumi.Input<List<String>> members;
  /// The numeric ID of the organization in which you want to create a custom role.
  final pulumi.Input<String> orgId;
  /// The role that should be applied. Only one
  /// `gcp.organizations.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [IAMBindingArgs].
  /// [condition] Optional.
  /// [members] A list of users that the role should apply to. For more details on format and restrictions see https://cloud.google.com/billing/reference/rest/v1/Policy#Binding
  /// [orgId] The numeric ID of the organization in which you want to create a custom role.
  /// [role] The role that should be applied. Only one
  IAMBindingArgs({
    pulumi.Output<IAMBindingCondition>? condition,
    required pulumi.Output<List<String>> members,
    required pulumi.Output<String> orgId,
    required pulumi.Output<String> role,
  }) :
      condition = pulumi.Input.asOptionalInput<IAMBindingCondition>(condition),
      members = pulumi.Input.asInput<List<String>>(members),
      orgId = pulumi.Input.asInput<String>(orgId),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<IAMBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'members': members,
      'orgId': orgId,
      'role': role,
    };
  }

  factory IAMBindingArgs.fromMap(Map<String, dynamic> map) {
    return IAMBindingArgs(
      condition: map['condition'] == null ? null : pulumi.Output.create<IAMBindingCondition>(IAMBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      members: pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      orgId: pulumi.Output.create<String>(map['orgId'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

