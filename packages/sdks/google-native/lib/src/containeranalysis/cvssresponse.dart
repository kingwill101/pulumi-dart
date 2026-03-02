// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Common Vulnerability Scoring System. For details, see https://www.first.org/cvss/specification-document This is a message we will try to use for storing various versions of CVSS rather than making a separate proto for storing a specific version.
class CVSSResponse {
  final pulumi.Input<String> attackComplexity;
  /// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  final pulumi.Input<String> attackVector;
  final pulumi.Input<String> authentication;
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

  /// Creates a new [CVSSResponse].
  /// [attackComplexity] Required.
  /// [attackVector] Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  /// [authentication] Required.
  /// [availabilityImpact] Required.
  /// [baseScore] The base score is a function of the base metric scores.
  /// [confidentialityImpact] Required.
  /// [exploitabilityScore] Required.
  /// [impactScore] Required.
  /// [integrityImpact] Required.
  /// [privilegesRequired] Required.
  /// [scope] Required.
  /// [userInteraction] Required.
  CVSSResponse({
    required this.attackComplexity,
    required this.attackVector,
    required this.authentication,
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
      'authentication': authentication,
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

  factory CVSSResponse.fromMap(Map<String, dynamic> map) {
    return CVSSResponse(
      attackComplexity: (map['attackComplexity'] as String).input(),
      attackVector: (map['attackVector'] as String).input(),
      authentication: (map['authentication'] as String).input(),
      availabilityImpact: (map['availabilityImpact'] as String).input(),
      baseScore: (map['baseScore'] as double).input(),
      confidentialityImpact: (map['confidentialityImpact'] as String).input(),
      exploitabilityScore: (map['exploitabilityScore'] as double).input(),
      impactScore: (map['impactScore'] as double).input(),
      integrityImpact: (map['integrityImpact'] as String).input(),
      privilegesRequired: (map['privilegesRequired'] as String).input(),
      scope: (map['scope'] as String).input(),
      userInteraction: (map['userInteraction'] as String).input(),
    );
  }
}

