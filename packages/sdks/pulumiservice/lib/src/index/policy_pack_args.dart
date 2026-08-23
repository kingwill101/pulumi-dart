// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_pack_policy_input.dart';

/// {@template pulumi_index_policy_pack_args_doc}
/// The set of arguments for PolicyPack.
/// {@endtemplate}
/// {@macro pulumi_index_policy_pack_args_doc}
class PolicyPackArgs {
  /// Optional display name. Changing it requires a new versionTag (policy pack versions are immutable in Pulumi Cloud).
  final pulumi.Input<String>? displayName;
  /// Policy pack name (unique within the org).
  final pulumi.Input<String> name;
  /// Organization name.
  final pulumi.Input<String> organization;
  /// Metadata for each policy in the pack.
  final pulumi.Input<List<PolicyPackPolicyInput>>? policies;
  /// Path to the directory containing the policy pack source. The directory is tarballed and uploaded.
  final pulumi.Input<String> sourcePath;
  /// Semantic version tag (e.g. "1.0.0"). Versions are immutable; change to publish a new version.
  final pulumi.Input<String> versionTag;

  /// Creates a new [PolicyPackArgs].
  /// [displayName] Optional display name. Changing it requires a new versionTag (policy pack versions are immutable in Pulumi Cloud).
  /// [name] Policy pack name (unique within the org).
  /// [organization] Organization name.
  /// [policies] Metadata for each policy in the pack.
  /// [sourcePath] Path to the directory containing the policy pack source. The directory is tarballed and uploaded.
  /// [versionTag] Semantic version tag (e.g. "1.0.0"). Versions are immutable; change to publish a new version.
  const PolicyPackArgs({
    this.displayName,
    required this.name,
    required this.organization,
    this.policies,
    required this.sourcePath,
    required this.versionTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'name': name,
      'organization': organization,
      'policies': ?pulumi.Input.mapOptionalInputValue<List<PolicyPackPolicyInput>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<PolicyPackPolicyInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourcePath': sourcePath,
      'versionTag': versionTag,
    };
  }

  factory PolicyPackArgs.fromMap(Map<String, dynamic> map) {
    return PolicyPackArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyPackPolicyInput>(guardedValue, (value) => PolicyPackPolicyInput.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourcePath: pulumi.Input.fromValue(map['sourcePath'] as String),
      versionTag: pulumi.Input.fromValue(map['versionTag'] as String),
    );
  }
}
