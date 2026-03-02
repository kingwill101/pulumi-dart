// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cvssv3_attack_complexity.dart';
import 'cvssv3_attack_vector.dart';
import 'cvssv3_availability_impact.dart';
import 'cvssv3_confidentiality_impact.dart';
import 'cvssv3_integrity_impact.dart';
import 'cvssv3_privileges_required.dart';
import 'cvssv3_scope.dart';
import 'cvssv3_user_interaction.dart';

/// Common Vulnerability Scoring System version 3. For details, see https://www.first.org/cvss/specification-document
class CVSSv3 {
  final pulumi.Input<CVSSv3AttackComplexity>? attackComplexity;
  /// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  final pulumi.Input<CVSSv3AttackVector>? attackVector;
  final pulumi.Input<CVSSv3AvailabilityImpact>? availabilityImpact;
  /// The base score is a function of the base metric scores.
  final pulumi.Input<double>? baseScore;
  final pulumi.Input<CVSSv3ConfidentialityImpact>? confidentialityImpact;
  final pulumi.Input<double>? exploitabilityScore;
  final pulumi.Input<double>? impactScore;
  final pulumi.Input<CVSSv3IntegrityImpact>? integrityImpact;
  final pulumi.Input<CVSSv3PrivilegesRequired>? privilegesRequired;
  final pulumi.Input<CVSSv3Scope>? scope;
  final pulumi.Input<CVSSv3UserInteraction>? userInteraction;

  /// Creates a new [CVSSv3].
  /// [attackComplexity] Optional.
  /// [attackVector] Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  /// [availabilityImpact] Optional.
  /// [baseScore] The base score is a function of the base metric scores.
  /// [confidentialityImpact] Optional.
  /// [exploitabilityScore] Optional.
  /// [impactScore] Optional.
  /// [integrityImpact] Optional.
  /// [privilegesRequired] Optional.
  /// [scope] Optional.
  /// [userInteraction] Optional.
  CVSSv3({
    this.attackComplexity,
    this.attackVector,
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
      'attackComplexity': ?pulumi.Input.mapOptionalInputValue<CVSSv3AttackComplexity, String>(attackComplexity, (value) => value.value),
      'attackVector': ?pulumi.Input.mapOptionalInputValue<CVSSv3AttackVector, String>(attackVector, (value) => value.value),
      'availabilityImpact': ?pulumi.Input.mapOptionalInputValue<CVSSv3AvailabilityImpact, String>(availabilityImpact, (value) => value.value),
      'baseScore': ?baseScore,
      'confidentialityImpact': ?pulumi.Input.mapOptionalInputValue<CVSSv3ConfidentialityImpact, String>(confidentialityImpact, (value) => value.value),
      'exploitabilityScore': ?exploitabilityScore,
      'impactScore': ?impactScore,
      'integrityImpact': ?pulumi.Input.mapOptionalInputValue<CVSSv3IntegrityImpact, String>(integrityImpact, (value) => value.value),
      'privilegesRequired': ?pulumi.Input.mapOptionalInputValue<CVSSv3PrivilegesRequired, String>(privilegesRequired, (value) => value.value),
      'scope': ?pulumi.Input.mapOptionalInputValue<CVSSv3Scope, String>(scope, (value) => value.value),
      'userInteraction': ?pulumi.Input.mapOptionalInputValue<CVSSv3UserInteraction, String>(userInteraction, (value) => value.value),
    };
  }

  factory CVSSv3.fromMap(Map<String, dynamic> map) {
    return CVSSv3(
      attackComplexity: map['attackComplexity'] == null ? null : (CVSSv3AttackComplexity.fromValue(map['attackComplexity'] as String)).input(),
      attackVector: map['attackVector'] == null ? null : (CVSSv3AttackVector.fromValue(map['attackVector'] as String)).input(),
      availabilityImpact: map['availabilityImpact'] == null ? null : (CVSSv3AvailabilityImpact.fromValue(map['availabilityImpact'] as String)).input(),
      baseScore: map['baseScore'] == null ? null : (map['baseScore'] as double).input(),
      confidentialityImpact: map['confidentialityImpact'] == null ? null : (CVSSv3ConfidentialityImpact.fromValue(map['confidentialityImpact'] as String)).input(),
      exploitabilityScore: map['exploitabilityScore'] == null ? null : (map['exploitabilityScore'] as double).input(),
      impactScore: map['impactScore'] == null ? null : (map['impactScore'] as double).input(),
      integrityImpact: map['integrityImpact'] == null ? null : (CVSSv3IntegrityImpact.fromValue(map['integrityImpact'] as String)).input(),
      privilegesRequired: map['privilegesRequired'] == null ? null : (CVSSv3PrivilegesRequired.fromValue(map['privilegesRequired'] as String)).input(),
      scope: map['scope'] == null ? null : (CVSSv3Scope.fromValue(map['scope'] as String)).input(),
      userInteraction: map['userInteraction'] == null ? null : (CVSSv3UserInteraction.fromValue(map['userInteraction'] as String)).input(),
    );
  }
}

