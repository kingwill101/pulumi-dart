// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_policy_pack_args_doc}
/// Arguments for getPolicyPack.
/// {@endtemplate}
/// {@macro pulumi_index_get_policy_pack_args_doc}
class GetPolicyPackArgs {
  /// The name of the Pulumi organization.
  final pulumi.Input<String> organizationName;
  /// The name of the policy pack.
  final pulumi.Input<String> policyPackName;
  /// The version number of the policy pack. If not specified, returns the latest version.
  final pulumi.Input<int>? version;

  /// Creates a new [GetPolicyPackArgs].
  /// [organizationName] The name of the Pulumi organization.
  /// [policyPackName] The name of the policy pack.
  /// [version] The version number of the policy pack. If not specified, returns the latest version.
  GetPolicyPackArgs({
    required this.organizationName,
    required this.policyPackName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationName': organizationName,
      'policyPackName': policyPackName,
      'version': ?version,
    };
  }

  factory GetPolicyPackArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyPackArgs(
      organizationName: (map['organizationName'] as String).input(),
      policyPackName: (map['policyPackName'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as int).input(),
    );
  }
}

