// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cvssattack_complexity_containeranalysis_v1alpha1.dart';
import 'cvssattack_vector_containeranalysis_v1alpha1.dart';
import 'cvssauthentication_containeranalysis_v1alpha1.dart';
import 'cvssavailability_impact_containeranalysis_v1alpha1.dart';
import 'cvssconfidentiality_impact_containeranalysis_v1alpha1.dart';
import 'cvssintegrity_impact_containeranalysis_v1alpha1.dart';
import 'cvssprivileges_required_containeranalysis_v1alpha1.dart';
import 'cvssscope_containeranalysis_v1alpha1.dart';
import 'cvssuser_interaction_containeranalysis_v1alpha1.dart';

/// Common Vulnerability Scoring System. This message is compatible with CVSS v2 and v3. For CVSS v2 details, see https://www.first.org/cvss/v2/guide CVSS v2 calculator: https://nvd.nist.gov/vuln-metrics/cvss/v2-calculator For CVSS v3 details, see https://www.first.org/cvss/specification-document CVSS v3 calculator: https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator
class CVSSContaineranalysisV1alpha1 {
  /// Defined in CVSS v3, CVSS v2
  final pulumi.Input<CVSSAttackComplexityContaineranalysisV1alpha1>? attackComplexity;
  /// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments. Defined in CVSS v3, CVSS v2
  final pulumi.Input<CVSSAttackVectorContaineranalysisV1alpha1>? attackVector;
  /// Defined in CVSS v2
  final pulumi.Input<CVSSAuthenticationContaineranalysisV1alpha1>? authentication;
  /// Defined in CVSS v3, CVSS v2
  final pulumi.Input<CVSSAvailabilityImpactContaineranalysisV1alpha1>? availabilityImpact;
  /// The base score is a function of the base metric scores.
  final pulumi.Input<double>? baseScore;
  /// Defined in CVSS v3, CVSS v2
  final pulumi.Input<CVSSConfidentialityImpactContaineranalysisV1alpha1>? confidentialityImpact;
  final pulumi.Input<double>? exploitabilityScore;
  final pulumi.Input<double>? impactScore;
  /// Defined in CVSS v3, CVSS v2
  final pulumi.Input<CVSSIntegrityImpactContaineranalysisV1alpha1>? integrityImpact;
  /// Defined in CVSS v3
  final pulumi.Input<CVSSPrivilegesRequiredContaineranalysisV1alpha1>? privilegesRequired;
  /// Defined in CVSS v3
  final pulumi.Input<CVSSScopeContaineranalysisV1alpha1>? scope;
  /// Defined in CVSS v3
  final pulumi.Input<CVSSUserInteractionContaineranalysisV1alpha1>? userInteraction;

  /// Creates a new [CVSSContaineranalysisV1alpha1].
  /// [attackComplexity] Defined in CVSS v3, CVSS v2
  /// [attackVector] Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments. Defined in CVSS v3, CVSS v2
  /// [authentication] Defined in CVSS v2
  /// [availabilityImpact] Defined in CVSS v3, CVSS v2
  /// [baseScore] The base score is a function of the base metric scores.
  /// [confidentialityImpact] Defined in CVSS v3, CVSS v2
  /// [exploitabilityScore] Optional.
  /// [impactScore] Optional.
  /// [integrityImpact] Defined in CVSS v3, CVSS v2
  /// [privilegesRequired] Defined in CVSS v3
  /// [scope] Defined in CVSS v3
  /// [userInteraction] Defined in CVSS v3
  CVSSContaineranalysisV1alpha1({
    this.attackComplexity,
    this.attackVector,
    this.authentication,
    this.availabilityImpact,
    this.baseScore,
    this.confidentialityImpact,
    this.exploitabilityScore,
    this.impactScore,
    this.integrityImpact,
    this.privilegesRequired,
    this.scope,
    this.userInteraction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attackComplexity': ?pulumi.Input.mapOptionalInputValue<CVSSAttackComplexityContaineranalysisV1alpha1, String>(attackComplexity, (value) => value.value),
      'attackVector': ?pulumi.Input.mapOptionalInputValue<CVSSAttackVectorContaineranalysisV1alpha1, String>(attackVector, (value) => value.value),
      'authentication': ?pulumi.Input.mapOptionalInputValue<CVSSAuthenticationContaineranalysisV1alpha1, String>(authentication, (value) => value.value),
      'availabilityImpact': ?pulumi.Input.mapOptionalInputValue<CVSSAvailabilityImpactContaineranalysisV1alpha1, String>(availabilityImpact, (value) => value.value),
      'baseScore': ?baseScore,
      'confidentialityImpact': ?pulumi.Input.mapOptionalInputValue<CVSSConfidentialityImpactContaineranalysisV1alpha1, String>(confidentialityImpact, (value) => value.value),
      'exploitabilityScore': ?exploitabilityScore,
      'impactScore': ?impactScore,
      'integrityImpact': ?pulumi.Input.mapOptionalInputValue<CVSSIntegrityImpactContaineranalysisV1alpha1, String>(integrityImpact, (value) => value.value),
      'privilegesRequired': ?pulumi.Input.mapOptionalInputValue<CVSSPrivilegesRequiredContaineranalysisV1alpha1, String>(privilegesRequired, (value) => value.value),
      'scope': ?pulumi.Input.mapOptionalInputValue<CVSSScopeContaineranalysisV1alpha1, String>(scope, (value) => value.value),
      'userInteraction': ?pulumi.Input.mapOptionalInputValue<CVSSUserInteractionContaineranalysisV1alpha1, String>(userInteraction, (value) => value.value),
    };
  }

  factory CVSSContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return CVSSContaineranalysisV1alpha1(
      attackComplexity: map['attackComplexity'] == null ? null : (CVSSAttackComplexityContaineranalysisV1alpha1.fromValue(map['attackComplexity'] as String)).input(),
      attackVector: map['attackVector'] == null ? null : (CVSSAttackVectorContaineranalysisV1alpha1.fromValue(map['attackVector'] as String)).input(),
      authentication: map['authentication'] == null ? null : (CVSSAuthenticationContaineranalysisV1alpha1.fromValue(map['authentication'] as String)).input(),
      availabilityImpact: map['availabilityImpact'] == null ? null : (CVSSAvailabilityImpactContaineranalysisV1alpha1.fromValue(map['availabilityImpact'] as String)).input(),
      baseScore: map['baseScore'] == null ? null : (map['baseScore'] as double).input(),
      confidentialityImpact: map['confidentialityImpact'] == null ? null : (CVSSConfidentialityImpactContaineranalysisV1alpha1.fromValue(map['confidentialityImpact'] as String)).input(),
      exploitabilityScore: map['exploitabilityScore'] == null ? null : (map['exploitabilityScore'] as double).input(),
      impactScore: map['impactScore'] == null ? null : (map['impactScore'] as double).input(),
      integrityImpact: map['integrityImpact'] == null ? null : (CVSSIntegrityImpactContaineranalysisV1alpha1.fromValue(map['integrityImpact'] as String)).input(),
      privilegesRequired: map['privilegesRequired'] == null ? null : (CVSSPrivilegesRequiredContaineranalysisV1alpha1.fromValue(map['privilegesRequired'] as String)).input(),
      scope: map['scope'] == null ? null : (CVSSScopeContaineranalysisV1alpha1.fromValue(map['scope'] as String)).input(),
      userInteraction: map['userInteraction'] == null ? null : (CVSSUserInteractionContaineranalysisV1alpha1.fromValue(map['userInteraction'] as String)).input(),
    );
  }
}

