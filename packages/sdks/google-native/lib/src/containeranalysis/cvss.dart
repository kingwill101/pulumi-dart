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
  const CVSS({
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
      'attackComplexity': ?pulumi.Input.mapOptionalInputValue<CVSSAttackComplexity, String>(attackComplexity, (value) => value.wireValue),
      'attackVector': ?pulumi.Input.mapOptionalInputValue<CVSSAttackVector, String>(attackVector, (value) => value.wireValue),
      'authentication': ?pulumi.Input.mapOptionalInputValue<CVSSAuthentication, String>(authentication, (value) => value.wireValue),
      'availabilityImpact': ?pulumi.Input.mapOptionalInputValue<CVSSAvailabilityImpact, String>(availabilityImpact, (value) => value.wireValue),
      'baseScore': ?baseScore,
      'confidentialityImpact': ?pulumi.Input.mapOptionalInputValue<CVSSConfidentialityImpact, String>(confidentialityImpact, (value) => value.wireValue),
      'exploitabilityScore': ?exploitabilityScore,
      'impactScore': ?impactScore,
      'integrityImpact': ?pulumi.Input.mapOptionalInputValue<CVSSIntegrityImpact, String>(integrityImpact, (value) => value.wireValue),
      'privilegesRequired': ?pulumi.Input.mapOptionalInputValue<CVSSPrivilegesRequired, String>(privilegesRequired, (value) => value.wireValue),
      'scope': ?pulumi.Input.mapOptionalInputValue<CVSSScope, String>(scope, (value) => value.wireValue),
      'userInteraction': ?pulumi.Input.mapOptionalInputValue<CVSSUserInteraction, String>(userInteraction, (value) => value.wireValue),
    };
  }

  factory CVSS.fromMap(Map<String, dynamic> map) {
    return CVSS(
      attackComplexity: (() { final guardedValue = map['attackComplexity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSAttackComplexity.fromValue(guardedValue as String)); })(),
      attackVector: (() { final guardedValue = map['attackVector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSAttackVector.fromValue(guardedValue as String)); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSAuthentication.fromValue(guardedValue as String)); })(),
      availabilityImpact: (() { final guardedValue = map['availabilityImpact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSAvailabilityImpact.fromValue(guardedValue as String)); })(),
      baseScore: (() { final guardedValue = map['baseScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      confidentialityImpact: (() { final guardedValue = map['confidentialityImpact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSConfidentialityImpact.fromValue(guardedValue as String)); })(),
      exploitabilityScore: (() { final guardedValue = map['exploitabilityScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      impactScore: (() { final guardedValue = map['impactScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      integrityImpact: (() { final guardedValue = map['integrityImpact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSIntegrityImpact.fromValue(guardedValue as String)); })(),
      privilegesRequired: (() { final guardedValue = map['privilegesRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSPrivilegesRequired.fromValue(guardedValue as String)); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSScope.fromValue(guardedValue as String)); })(),
      userInteraction: (() { final guardedValue = map['userInteraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSUserInteraction.fromValue(guardedValue as String)); })(),
    );
  }
}
