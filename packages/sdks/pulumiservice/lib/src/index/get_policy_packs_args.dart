// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_policy_packs_args_doc}
/// Arguments for getPolicyPacks.
/// {@endtemplate}
/// {@macro pulumi_index_get_policy_packs_args_doc}
class GetPolicyPacksArgs {
  /// The name of the Pulumi organization.
  final pulumi.Input<String> organizationName;

  /// Creates a new [GetPolicyPacksArgs].
  /// [organizationName] The name of the Pulumi organization.
  const GetPolicyPacksArgs({
    required this.organizationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationName': organizationName,
    };
  }

  factory GetPolicyPacksArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyPacksArgs(
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
    );
  }
}

