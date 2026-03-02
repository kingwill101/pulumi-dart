// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cvssattack_complexity.dart';
import 'cvssattack_vector.dart';
import 'cvssauthentication.dart';
import 'cvssavailability_impact.dart';
import 'cvssconfidentiality_impact.dart';
import 'cvssintegrity_impact.dart';
import 'cvssprivileges_required.dart';
import 'cvssscope.dart';
import 'cvssuser_interaction.dart';

/// Common Vulnerability Scoring System. For details, see https://www.first.org/cvss/specification-document This is a message we will try to use for storing various versions of CVSS rather than making a separate proto for storing a specific version.
class CVSS {
  final pulumi.Input<CVSSAttackComplexity>? attackComplexity;
  /// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  final pulumi.Input<CVSSAttackVector>? attackVector;
  final pulumi.Input<CVSSAuthentication>? authentication;
  final pulumi.Input<CVSSAvailabilityImpact>? availabilityImpact;
  /// The base score is a function of the base metric scores.
  final pulumi.Input<double>? baseScore;
  final pulumi.Input<CVSSConfidentialityImpact>? confidentialityImpact;
  final pulumi.Input<double>? exploitabilityScore;
  final pulumi.Input<double>? impactScore;
  final pulumi.Input<CVSSIntegrityImpact>? integrityImpact;
  final pulumi.Input<CVSSPrivilegesRequired>? privilegesRequired;
  final pulumi.Input<CVSSScope>? scope;
  final pulumi.Input<CVSSUserInteraction>? userInteraction;

  /// Creates a new [CVSS].
  /// [attackComplexity] Optional.
  /// [attackVector] Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  /// [authentication] Optional.
  /// [availabilityImpact] Optional.
  /// [baseScore] The base score is a function of the base metric scores.
  /// [confidentialityImpact] Optional.
  /// [exploitabilityScore] Optional.
  /// [impactScore] Optional.
  /// [integrityImpact] Optional.
  /// [privilegesRequired] Optional.
  /// [scope] Optional.
  /// [userInteraction] Optional.
  CVSS({
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
      'attackComplexity': ?pulumi.Input.mapOptionalInputValue<CVSSAttackComplexity, String>(attackComplexity, (value) => value.value),
      'attackVector': ?pulumi.Input.mapOptionalInputValue<CVSSAttackVector, String>(attackVector, (value) => value.value),
      'authentication': ?pulumi.Input.mapOptionalInputValue<CVSSAuthentication, String>(authentication, (value) => value.value),
      'availabilityImpact': ?pulumi.Input.mapOptionalInputValue<CVSSAvailabilityImpact, String>(availabilityImpact, (value) => value.value),
      'baseScore': ?baseScore,
      'confidentialityImpact': ?pulumi.Input.mapOptionalInputValue<CVSSConfidentialityImpact, String>(confidentialityImpact, (value) => value.value),
      'exploitabilityScore': ?exploitabilityScore,
      'impactScore': ?impactScore,
      'integrityImpact': ?pulumi.Input.mapOptionalInputValue<CVSSIntegrityImpact, String>(integrityImpact, (value) => value.value),
      'privilegesRequired': ?pulumi.Input.mapOptionalInputValue<CVSSPrivilegesRequired, String>(privilegesRequired, (value) => value.value),
      'scope': ?pulumi.Input.mapOptionalInputValue<CVSSScope, String>(scope, (value) => value.value),
      'userInteraction': ?pulumi.Input.mapOptionalInputValue<CVSSUserInteraction, String>(userInteraction, (value) => value.value),
    };
  }

  factory CVSS.fromMap(Map<String, dynamic> map) {
    return CVSS(
      attackComplexity: map['attackComplexity'] == null ? null : (CVSSAttackComplexity.fromValue(map['attackComplexity']! as String)).input(),
      attackVector: map['attackVector'] == null ? null : (CVSSAttackVector.fromValue(map['attackVector']! as String)).input(),
      authentication: map['authentication'] == null ? null : (CVSSAuthentication.fromValue(map['authentication']! as String)).input(),
      availabilityImpact: map['availabilityImpact'] == null ? null : (CVSSAvailabilityImpact.fromValue(map['availabilityImpact']! as String)).input(),
      baseScore: map['baseScore'] == null ? null : (map['baseScore']! as double).input(),
      confidentialityImpact: map['confidentialityImpact'] == null ? null : (CVSSConfidentialityImpact.fromValue(map['confidentialityImpact']! as String)).input(),
      exploitabilityScore: map['exploitabilityScore'] == null ? null : (map['exploitabilityScore']! as double).input(),
      impactScore: map['impactScore'] == null ? null : (map['impactScore']! as double).input(),
      integrityImpact: map['integrityImpact'] == null ? null : (CVSSIntegrityImpact.fromValue(map['integrityImpact']! as String)).input(),
      privilegesRequired: map['privilegesRequired'] == null ? null : (CVSSPrivilegesRequired.fromValue(map['privilegesRequired']! as String)).input(),
      scope: map['scope'] == null ? null : (CVSSScope.fromValue(map['scope']! as String)).input(),
      userInteraction: map['userInteraction'] == null ? null : (CVSSUserInteraction.fromValue(map['userInteraction']! as String)).input(),
    );
  }
}

