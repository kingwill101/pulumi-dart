// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cvssv3_attack_complexity_containeranalysis_v1beta1.dart';
import 'cvssv3_attack_vector_containeranalysis_v1beta1.dart';
import 'cvssv3_availability_impact_containeranalysis_v1beta1.dart';
import 'cvssv3_confidentiality_impact_containeranalysis_v1beta1.dart';
import 'cvssv3_integrity_impact_containeranalysis_v1beta1.dart';
import 'cvssv3_privileges_required_containeranalysis_v1beta1.dart';
import 'cvssv3_scope_containeranalysis_v1beta1.dart';
import 'cvssv3_user_interaction_containeranalysis_v1beta1.dart';

/// Deprecated. Common Vulnerability Scoring System version 3. For details, see https://www.first.org/cvss/specification-document
class CVSSv3ContaineranalysisV1beta1 {
  final pulumi.Input<CVSSv3AttackComplexityContaineranalysisV1beta1>?
  attackComplexity;

  /// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  final pulumi.Input<CVSSv3AttackVectorContaineranalysisV1beta1>? attackVector;
  final pulumi.Input<CVSSv3AvailabilityImpactContaineranalysisV1beta1>?
  availabilityImpact;

  /// The base score is a function of the base metric scores.
  final pulumi.Input<double>? baseScore;
  final pulumi.Input<CVSSv3ConfidentialityImpactContaineranalysisV1beta1>?
  confidentialityImpact;
  final pulumi.Input<double>? exploitabilityScore;
  final pulumi.Input<double>? impactScore;
  final pulumi.Input<CVSSv3IntegrityImpactContaineranalysisV1beta1>?
  integrityImpact;
  final pulumi.Input<CVSSv3PrivilegesRequiredContaineranalysisV1beta1>?
  privilegesRequired;
  final pulumi.Input<CVSSv3ScopeContaineranalysisV1beta1>? scope;
  final pulumi.Input<CVSSv3UserInteractionContaineranalysisV1beta1>?
  userInteraction;

  /// Creates a new [CVSSv3ContaineranalysisV1beta1].
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
  CVSSv3ContaineranalysisV1beta1({
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
      'attackComplexity':
          ?pulumi.Input.mapOptionalInputValue<
            CVSSv3AttackComplexityContaineranalysisV1beta1,
            String
          >(attackComplexity, (value) => value.wireValue),
      'attackVector':
          ?pulumi.Input.mapOptionalInputValue<
            CVSSv3AttackVectorContaineranalysisV1beta1,
            String
          >(attackVector, (value) => value.wireValue),
      'availabilityImpact':
          ?pulumi.Input.mapOptionalInputValue<
            CVSSv3AvailabilityImpactContaineranalysisV1beta1,
            String
          >(availabilityImpact, (value) => value.wireValue),
      'baseScore': ?baseScore,
      'confidentialityImpact':
          ?pulumi.Input.mapOptionalInputValue<
            CVSSv3ConfidentialityImpactContaineranalysisV1beta1,
            String
          >(confidentialityImpact, (value) => value.wireValue),
      'exploitabilityScore': ?exploitabilityScore,
      'impactScore': ?impactScore,
      'integrityImpact':
          ?pulumi.Input.mapOptionalInputValue<
            CVSSv3IntegrityImpactContaineranalysisV1beta1,
            String
          >(integrityImpact, (value) => value.wireValue),
      'privilegesRequired':
          ?pulumi.Input.mapOptionalInputValue<
            CVSSv3PrivilegesRequiredContaineranalysisV1beta1,
            String
          >(privilegesRequired, (value) => value.wireValue),
      'scope':
          ?pulumi.Input.mapOptionalInputValue<
            CVSSv3ScopeContaineranalysisV1beta1,
            String
          >(scope, (value) => value.wireValue),
      'userInteraction':
          ?pulumi.Input.mapOptionalInputValue<
            CVSSv3UserInteractionContaineranalysisV1beta1,
            String
          >(userInteraction, (value) => value.wireValue),
    };
  }

  factory CVSSv3ContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return CVSSv3ContaineranalysisV1beta1(
      attackComplexity: (() {
        final guardedValue = map['attackComplexity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CVSSv3AttackComplexityContaineranalysisV1beta1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      attackVector: (() {
        final guardedValue = map['attackVector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CVSSv3AttackVectorContaineranalysisV1beta1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      availabilityImpact: (() {
        final guardedValue = map['availabilityImpact'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CVSSv3AvailabilityImpactContaineranalysisV1beta1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      baseScore: (() {
        final guardedValue = map['baseScore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      confidentialityImpact: (() {
        final guardedValue = map['confidentialityImpact'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CVSSv3ConfidentialityImpactContaineranalysisV1beta1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      exploitabilityScore: (() {
        final guardedValue = map['exploitabilityScore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      impactScore: (() {
        final guardedValue = map['impactScore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      integrityImpact: (() {
        final guardedValue = map['integrityImpact'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CVSSv3IntegrityImpactContaineranalysisV1beta1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      privilegesRequired: (() {
        final guardedValue = map['privilegesRequired'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CVSSv3PrivilegesRequiredContaineranalysisV1beta1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CVSSv3ScopeContaineranalysisV1beta1.fromValue(guardedValue as String),
        );
      })(),
      userInteraction: (() {
        final guardedValue = map['userInteraction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CVSSv3UserInteractionContaineranalysisV1beta1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
