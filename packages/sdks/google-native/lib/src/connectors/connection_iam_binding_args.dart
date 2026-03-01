// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../accesscontextmanager/condition.dart';

/// {@template pulumi_connectors_v1_connection_iam_binding_args_doc}
/// The set of arguments for ConnectionIamBinding.
/// {@endtemplate}
/// {@macro pulumi_connectors_v1_connection_iam_binding_args_doc}
class ConnectionIamBindingArgs {
  /// An IAM Condition for a given binding.
  final pulumi.Input<Condition>? condition;
  /// Identities that will be granted the privilege in role. Each entry can have one of the following values:
  ///
  /// * user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * group:{emailid}: An email address that represents a Google group. For example, admins@example.com.
  /// * domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>> members;
  /// The name of the resource to manage IAM policies for.
  final pulumi.Input<String> name;
  /// The role that should be applied. Only one `IamBinding` can be used per role.
  final pulumi.Input<String> role;

  /// Creates a new [ConnectionIamBindingArgs].
  /// [condition] An IAM Condition for a given binding.
  /// [members] Identities that will be granted the privilege in role. Each entry can have one of the following values:
  /// [name] The name of the resource to manage IAM policies for.
  /// [role] The role that should be applied. Only one `IamBinding` can be used per role.
  ConnectionIamBindingArgs({
    pulumi.Output<Condition>? condition,
    required pulumi.Output<List<String>> members,
    required pulumi.Output<String> name,
    required pulumi.Output<String> role,
  }) :
      condition = pulumi.Input.asOptionalInput<Condition>(condition),
      members = pulumi.Input.asInput<List<String>>(members),
      name = pulumi.Input.asInput<String>(name),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<Condition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'members': members,
      'name': name,
      'role': role,
    };
  }

  factory ConnectionIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionIamBindingArgs(
      condition: map['condition'] == null ? null : pulumi.Output.create<Condition>(Condition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      members: pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      name: pulumi.Output.create<String>(map['name'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

