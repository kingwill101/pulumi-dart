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
  /// The version tag of the policy pack, for example `1.4.1`, as shown in Pulumi Cloud. If not specified, returns the latest version.
  final pulumi.Input<String?>? versionTag;

  /// Creates a new [GetPolicyPackArgs].
  /// [organizationName] The name of the Pulumi organization.
  /// [policyPackName] The name of the policy pack.
  /// [versionTag] The version tag of the policy pack, for example `1.4.1`, as shown in Pulumi Cloud. If not specified, returns the latest version.
  const GetPolicyPackArgs({
    required this.organizationName,
    required this.policyPackName,
    this.versionTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationName': organizationName,
      'policyPackName': policyPackName,
      'versionTag': ?versionTag,
    };
  }

  factory GetPolicyPackArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyPackArgs(
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      policyPackName: pulumi.Input.fromValue(map['policyPackName'] as String),
      versionTag: (() { final guardedValue = map['versionTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
