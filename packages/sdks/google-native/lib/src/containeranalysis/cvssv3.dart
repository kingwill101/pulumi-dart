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
  const CVSSv3({
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
      'attackComplexity': ?pulumi.Input.mapOptionalInputValue<CVSSv3AttackComplexity, String>(attackComplexity, (value) => value.wireValue),
      'attackVector': ?pulumi.Input.mapOptionalInputValue<CVSSv3AttackVector, String>(attackVector, (value) => value.wireValue),
      'availabilityImpact': ?pulumi.Input.mapOptionalInputValue<CVSSv3AvailabilityImpact, String>(availabilityImpact, (value) => value.wireValue),
      'baseScore': ?baseScore,
      'confidentialityImpact': ?pulumi.Input.mapOptionalInputValue<CVSSv3ConfidentialityImpact, String>(confidentialityImpact, (value) => value.wireValue),
      'exploitabilityScore': ?exploitabilityScore,
      'impactScore': ?impactScore,
      'integrityImpact': ?pulumi.Input.mapOptionalInputValue<CVSSv3IntegrityImpact, String>(integrityImpact, (value) => value.wireValue),
      'privilegesRequired': ?pulumi.Input.mapOptionalInputValue<CVSSv3PrivilegesRequired, String>(privilegesRequired, (value) => value.wireValue),
      'scope': ?pulumi.Input.mapOptionalInputValue<CVSSv3Scope, String>(scope, (value) => value.wireValue),
      'userInteraction': ?pulumi.Input.mapOptionalInputValue<CVSSv3UserInteraction, String>(userInteraction, (value) => value.wireValue),
    };
  }

  factory CVSSv3.fromMap(Map<String, dynamic> map) {
    return CVSSv3(
      attackComplexity: (() { final guardedValue = map['attackComplexity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSv3AttackComplexity.fromValue(guardedValue as String)); })(),
      attackVector: (() { final guardedValue = map['attackVector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSv3AttackVector.fromValue(guardedValue as String)); })(),
      availabilityImpact: (() { final guardedValue = map['availabilityImpact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSv3AvailabilityImpact.fromValue(guardedValue as String)); })(),
      baseScore: (() { final guardedValue = map['baseScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      confidentialityImpact: (() { final guardedValue = map['confidentialityImpact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSv3ConfidentialityImpact.fromValue(guardedValue as String)); })(),
      exploitabilityScore: (() { final guardedValue = map['exploitabilityScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      impactScore: (() { final guardedValue = map['impactScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      integrityImpact: (() { final guardedValue = map['integrityImpact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSv3IntegrityImpact.fromValue(guardedValue as String)); })(),
      privilegesRequired: (() { final guardedValue = map['privilegesRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSv3PrivilegesRequired.fromValue(guardedValue as String)); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSv3Scope.fromValue(guardedValue as String)); })(),
      userInteraction: (() { final guardedValue = map['userInteraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CVSSv3UserInteraction.fromValue(guardedValue as String)); })(),
    );
  }
}

