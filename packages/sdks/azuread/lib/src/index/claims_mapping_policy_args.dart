// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_claims_mapping_policy_claims_mapping_policy_args_doc}
/// The set of arguments for ClaimsMappingPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_claims_mapping_policy_claims_mapping_policy_args_doc}
class ClaimsMappingPolicyArgs {
  /// The claims mapping policy. This is a JSON formatted string, for which the `jsonencode()` function can be used.
  final pulumi.Input<List<String>> definitions;
  /// The display name for this Claims Mapping Policy.
  final pulumi.Input<String> displayName;

  /// Creates a new [ClaimsMappingPolicyArgs].
  /// [definitions] The claims mapping policy. This is a JSON formatted string, for which the `jsonencode()` function can be used.
  /// [displayName] The display name for this Claims Mapping Policy.
  const ClaimsMappingPolicyArgs({
    required this.definitions,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definitions': definitions,
      'displayName': displayName,
    };
  }

  factory ClaimsMappingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ClaimsMappingPolicyArgs(
      definitions: pulumi.Input.fromValue((map['definitions'] as List).cast<String>()),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
    );
  }
}

