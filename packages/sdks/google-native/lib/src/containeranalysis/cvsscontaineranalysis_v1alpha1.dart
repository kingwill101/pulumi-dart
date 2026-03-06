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
  const CVSSContaineranalysisV1alpha1({
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
      'attackComplexity': ?pulumi.Input.mapOptionalInputValue<CVSSAttackComplexityContaineranalysisV1alpha1, String>(attackComplexity, (value) => value.wireValue),
      'attackVector': ?pulumi.Input.mapOptionalInputValue<CVSSAttackVectorContaineranalysisV1alpha1, String>(attackVector, (value) => value.wireValue),
      'authentication': ?pulumi.Input.mapOptionalInputValue<CVSSAuthenticationContaineranalysisV1alpha1, String>(authentication, (value) => value.wireValue),
      'availabilityImpact': ?pulumi.Input.mapOptionalInputValue<CVSSAvailabilityImpactContaineranalysisV1alpha1, String>(availabilityImpact, (value) => value.wireValue),
      'baseScore': ?baseScore,
      'confidentialityImpact': ?pulumi.Input.mapOptionalInputValue<CVSSConfidentialityImpactContaineranalysisV1alpha1, String>(confidentialityImpact, (value) => value.wireValue),
      'exploitabilityScore': ?exploitabilityScore,
      'impactScore': ?impactScore,
      'integrityImpact': ?pulumi.Input.mapOptionalInputValue<CVSSIntegrityImpactContaineranalysisV1alpha1, String>(integrityImpact, (value) => value.wireValue),
      'privilegesRequired': ?pulumi.Input.mapOptionalInputValue<CVSSPrivilegesRequiredContaineranalysisV1alpha1, String>(privilegesRequired, (value) => value.wireValue),
      'scope': ?pulumi.Input.mapOptionalInputValue<CVSSScopeContaineranalysisV1alpha1, String>(scope, (value) => value.wireValue),
      'userInteraction': ?pulumi.Input.mapOptionalInputValue<CVSSUserInteractionContaineranalysisV1alpha1, String>(userInteraction, (value) => value.wireValue),
    };
  }

  factory CVSSContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return CVSSContaineranalysisV1alpha1(
      attackComplexity: (() { final guardedValue = map['attackComplexity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSAttackComplexityContaineranalysisV1alpha1.fromValue(guardedValue as String)); })(),
      attackVector: (() { final guardedValue = map['attackVector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSAttackVectorContaineranalysisV1alpha1.fromValue(guardedValue as String)); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSAuthenticationContaineranalysisV1alpha1.fromValue(guardedValue as String)); })(),
      availabilityImpact: (() { final guardedValue = map['availabilityImpact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSAvailabilityImpactContaineranalysisV1alpha1.fromValue(guardedValue as String)); })(),
      baseScore: (() { final guardedValue = map['baseScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      confidentialityImpact: (() { final guardedValue = map['confidentialityImpact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSConfidentialityImpactContaineranalysisV1alpha1.fromValue(guardedValue as String)); })(),
      exploitabilityScore: (() { final guardedValue = map['exploitabilityScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      impactScore: (() { final guardedValue = map['impactScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      integrityImpact: (() { final guardedValue = map['integrityImpact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSIntegrityImpactContaineranalysisV1alpha1.fromValue(guardedValue as String)); })(),
      privilegesRequired: (() { final guardedValue = map['privilegesRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSPrivilegesRequiredContaineranalysisV1alpha1.fromValue(guardedValue as String)); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSScopeContaineranalysisV1alpha1.fromValue(guardedValue as String)); })(),
      userInteraction: (() { final guardedValue = map['userInteraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSUserInteractionContaineranalysisV1alpha1.fromValue(guardedValue as String)); })(),
    );
  }
}

