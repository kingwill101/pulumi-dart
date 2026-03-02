// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_admission_whitelist_pattern.dart';
import 'policy_cluster_admission_rule.dart';
import 'policy_default_admission_rule.dart';

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// A whitelist of image patterns to exclude from admission rules. If an
  /// image's name matches a whitelist pattern, the image's admission
  /// requests will always be permitted regardless of your admission rules.
  /// Structure is documented below.
  final pulumi.Input<List<PolicyAdmissionWhitelistPattern>>? admissionWhitelistPatterns;
  /// Per-cluster admission rules. An admission rule specifies either that
  /// all container images used in a pod creation request must be attested
  /// to by one or more attestors, that all pod creations will be allowed,
  /// or that all pod creations will be denied. There can be at most one
  /// admission rule per cluster spec.
  ///
  /// Identifier format: `{{location}}.{{clusterId}}`.
  /// A location is either a compute zone (e.g. `us-central1-a`) or a region
  /// (e.g. `us-central1`).
  /// Structure is documented below.
  final pulumi.Input<List<PolicyClusterAdmissionRule>>? clusterAdmissionRules;
  /// Default admission rule for a cluster without a per-cluster admission
  /// rule.
  /// Structure is documented below.
  final pulumi.Input<PolicyDefaultAdmissionRule>? defaultAdmissionRule;
  /// A descriptive comment.
  final pulumi.Input<String>? description;
  /// Controls the evaluation of a Google-maintained global admission policy
  /// for common system-level images. Images not covered by the global
  /// policy will be subject to the project admission policy.
  /// Possible values are: `ENABLE`, `DISABLE`.
  final pulumi.Input<String>? globalPolicyEvaluationMode;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [PolicyState].
  /// [admissionWhitelistPatterns] A whitelist of image patterns to exclude from admission rules. If an
  /// [clusterAdmissionRules] Per-cluster admission rules. An admission rule specifies either that
  /// [defaultAdmissionRule] Default admission rule for a cluster without a per-cluster admission
  /// [description] A descriptive comment.
  /// [globalPolicyEvaluationMode] Controls the evaluation of a Google-maintained global admission policy
  /// [project] The ID of the project in which the resource belongs.
  PolicyState({
    this.admissionWhitelistPatterns,
    this.clusterAdmissionRules,
    this.defaultAdmissionRule,
    this.description,
    this.globalPolicyEvaluationMode,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admissionWhitelistPatterns': ?pulumi.Input.mapOptionalInputValue<List<PolicyAdmissionWhitelistPattern>, List<Map<String, dynamic>>>(admissionWhitelistPatterns, (value) => pulumi.Input.encodeList<PolicyAdmissionWhitelistPattern, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterAdmissionRules': ?pulumi.Input.mapOptionalInputValue<List<PolicyClusterAdmissionRule>, List<Map<String, dynamic>>>(clusterAdmissionRules, (value) => pulumi.Input.encodeList<PolicyClusterAdmissionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultAdmissionRule': ?pulumi.Input.mapOptionalInputValue<PolicyDefaultAdmissionRule, Map<String, dynamic>>(defaultAdmissionRule, (value) => value.toMap()),
      'description': ?description,
      'globalPolicyEvaluationMode': ?globalPolicyEvaluationMode,
      'project': ?project,
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      admissionWhitelistPatterns: map['admissionWhitelistPatterns'] == null ? null : (pulumi.Input.decodeList<PolicyAdmissionWhitelistPattern>(map['admissionWhitelistPatterns'], (value) => PolicyAdmissionWhitelistPattern.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clusterAdmissionRules: map['clusterAdmissionRules'] == null ? null : (pulumi.Input.decodeList<PolicyClusterAdmissionRule>(map['clusterAdmissionRules'], (value) => PolicyClusterAdmissionRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultAdmissionRule: map['defaultAdmissionRule'] == null ? null : (PolicyDefaultAdmissionRule.fromMap((map['defaultAdmissionRule'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      globalPolicyEvaluationMode: map['globalPolicyEvaluationMode'] == null ? null : (map['globalPolicyEvaluationMode'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

