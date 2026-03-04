// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deprecated. Common Vulnerability Scoring System version 3. For details, see https://www.first.org/cvss/specification-document
class CVSSv3ResponseContaineranalysisV1beta1 {
  final pulumi.Input<String> attackComplexity;

  /// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  final pulumi.Input<String> attackVector;
  final pulumi.Input<String> availabilityImpact;

  /// The base score is a function of the base metric scores.
  final pulumi.Input<double> baseScore;
  final pulumi.Input<String> confidentialityImpact;
  final pulumi.Input<double> exploitabilityScore;
  final pulumi.Input<double> impactScore;
  final pulumi.Input<String> integrityImpact;
  final pulumi.Input<String> privilegesRequired;
  final pulumi.Input<String> scope;
  final pulumi.Input<String> userInteraction;

  /// Creates a new [CVSSv3ResponseContaineranalysisV1beta1].
  /// [attackComplexity] Required.
  /// [attackVector] Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  /// [availabilityImpact] Required.
  /// [baseScore] The base score is a function of the base metric scores.
  /// [confidentialityImpact] Required.
  /// [exploitabilityScore] Required.
  /// [impactScore] Required.
  /// [integrityImpact] Required.
  /// [privilegesRequired] Required.
  /// [scope] Required.
  /// [userInteraction] Required.
  CVSSv3ResponseContaineranalysisV1beta1({
    required this.attackComplexity,
    required this.attackVector,
    required this.availabilityImpact,
    required this.baseScore,
    required this.confidentialityImpact,
    required this.exploitabilityScore,
    required this.impactScore,
    required this.integrityImpact,
    required this.privilegesRequired,
    required this.scope,
    required this.userInteraction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attackComplexity': attackComplexity,
      'attackVector': attackVector,
      'availabilityImpact': availabilityImpact,
      'baseScore': baseScore,
      'confidentialityImpact': confidentialityImpact,
      'exploitabilityScore': exploitabilityScore,
      'impactScore': impactScore,
      'integrityImpact': integrityImpact,
      'privilegesRequired': privilegesRequired,
      'scope': scope,
      'userInteraction': userInteraction,
    };
  }

  factory CVSSv3ResponseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return CVSSv3ResponseContaineranalysisV1beta1(
      attackComplexity: pulumi.Input.fromValue(
        map['attackComplexity'] as String,
      ),
      attackVector: pulumi.Input.fromValue(map['attackVector'] as String),
      availabilityImpact: pulumi.Input.fromValue(
        map['availabilityImpact'] as String,
      ),
      baseScore: pulumi.Input.fromValue(map['baseScore'] as double),
      confidentialityImpact: pulumi.Input.fromValue(
        map['confidentialityImpact'] as String,
      ),
      exploitabilityScore: pulumi.Input.fromValue(
        map['exploitabilityScore'] as double,
      ),
      impactScore: pulumi.Input.fromValue(map['impactScore'] as double),
      integrityImpact: pulumi.Input.fromValue(map['integrityImpact'] as String),
      privilegesRequired: pulumi.Input.fromValue(
        map['privilegesRequired'] as String,
      ),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      userInteraction: pulumi.Input.fromValue(map['userInteraction'] as String),
    );
  }
}
