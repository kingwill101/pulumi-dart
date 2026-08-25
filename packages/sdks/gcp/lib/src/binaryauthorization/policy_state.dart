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
  final pulumi.Input<List<PolicyAdmissionWhitelistPattern>?>? admissionWhitelistPatterns;
  /// Per-cluster admission rules. An admission rule specifies either that
  /// all container images used in a pod creation request must be attested
  /// to by one or more attestors, that all pod creations will be allowed,
  /// or that all pod creations will be denied. There can be at most one
  /// admission rule per cluster spec.
  /// Identifier format: `{{location}}.{{clusterId}}`.
  /// A location is either a compute zone (e.g. `us-central1-a`) or a region
  /// (e.g. `us-central1`).
  /// Structure is documented below.
  final pulumi.Input<List<PolicyClusterAdmissionRule>?>? clusterAdmissionRules;
  /// Default admission rule for a cluster without a per-cluster admission
  /// rule.
  /// Structure is documented below.
  final pulumi.Input<PolicyDefaultAdmissionRule?>? defaultAdmissionRule;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A descriptive comment.
  final pulumi.Input<String?>? description;
  /// Controls the evaluation of a Google-maintained global admission policy
  /// for common system-level images. Images not covered by the global
  /// policy will be subject to the project admission policy.
  /// Possible values are: `ENABLE`, `DISABLE`.
  final pulumi.Input<String?>? globalPolicyEvaluationMode;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [PolicyState].
  /// [admissionWhitelistPatterns] A whitelist of image patterns to exclude from admission rules. If an
  /// [clusterAdmissionRules] Per-cluster admission rules. An admission rule specifies either that
  /// [defaultAdmissionRule] Default admission rule for a cluster without a per-cluster admission
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A descriptive comment.
  /// [globalPolicyEvaluationMode] Controls the evaluation of a Google-maintained global admission policy
  /// [project] The ID of the project in which the resource belongs.
  const PolicyState({
    this.admissionWhitelistPatterns,
    this.clusterAdmissionRules,
    this.defaultAdmissionRule,
    this.deletionPolicy,
    this.description,
    this.globalPolicyEvaluationMode,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admissionWhitelistPatterns': ?pulumi.Input.mapOptionalInputValue<List<PolicyAdmissionWhitelistPattern>, List<Map<String, dynamic>>>(admissionWhitelistPatterns, (value) => pulumi.Input.encodeList<PolicyAdmissionWhitelistPattern, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterAdmissionRules': ?pulumi.Input.mapOptionalInputValue<List<PolicyClusterAdmissionRule>, List<Map<String, dynamic>>>(clusterAdmissionRules, (value) => pulumi.Input.encodeList<PolicyClusterAdmissionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultAdmissionRule': ?pulumi.Input.mapOptionalInputValue<PolicyDefaultAdmissionRule, Map<String, dynamic>>(defaultAdmissionRule, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'globalPolicyEvaluationMode': ?globalPolicyEvaluationMode,
      'project': ?project,
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      admissionWhitelistPatterns: (() { final guardedValue = map['admissionWhitelistPatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyAdmissionWhitelistPattern>(guardedValue, (value) => PolicyAdmissionWhitelistPattern.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clusterAdmissionRules: (() { final guardedValue = map['clusterAdmissionRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyClusterAdmissionRule>(guardedValue, (value) => PolicyClusterAdmissionRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultAdmissionRule: (() { final guardedValue = map['defaultAdmissionRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyDefaultAdmissionRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalPolicyEvaluationMode: (() { final guardedValue = map['globalPolicyEvaluationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
