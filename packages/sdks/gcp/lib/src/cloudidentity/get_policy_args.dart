// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudidentity_get_policy_get_policy_args_doc}
/// Arguments for getPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_get_policy_get_policy_args_doc}
class GetPolicyArgs {
  /// The resource name of the policy to retrieve. Format: `policies/{policy_id}`.
  final pulumi.Input<String> name;

  /// Creates a new [GetPolicyArgs].
  /// [name] The resource name of the policy to retrieve. Format: `policies/{policy_id}`.
  GetPolicyArgs({
    required pulumi.Output<String> name,
  }) :
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

