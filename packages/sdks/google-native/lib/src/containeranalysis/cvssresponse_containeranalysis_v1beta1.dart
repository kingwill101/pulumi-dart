// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Common Vulnerability Scoring System. This message is compatible with CVSS v2 and v3. For CVSS v2 details, see https://www.first.org/cvss/v2/guide CVSS v2 calculator: https://nvd.nist.gov/vuln-metrics/cvss/v2-calculator For CVSS v3 details, see https://www.first.org/cvss/specification-document CVSS v3 calculator: https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator
class CVSSResponseContaineranalysisV1beta1 {
  /// Defined in CVSS v3, CVSS v2
  final pulumi.Input<String> attackComplexity;

  /// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments. Defined in CVSS v3, CVSS v2
  final pulumi.Input<String> attackVector;

  /// Defined in CVSS v2
  final pulumi.Input<String> authentication;

  /// Defined in CVSS v3, CVSS v2
  final pulumi.Input<String> availabilityImpact;

  /// The base score is a function of the base metric scores.
  final pulumi.Input<double> baseScore;

  /// Defined in CVSS v3, CVSS v2
  final pulumi.Input<String> confidentialityImpact;
  final pulumi.Input<double> exploitabilityScore;
  final pulumi.Input<double> impactScore;

  /// Defined in CVSS v3, CVSS v2
  final pulumi.Input<String> integrityImpact;

  /// Defined in CVSS v3
  final pulumi.Input<String> privilegesRequired;

  /// Defined in CVSS v3
  final pulumi.Input<String> scope;

  /// Defined in CVSS v3
  final pulumi.Input<String> userInteraction;

  /// Creates a new [CVSSResponseContaineranalysisV1beta1].
  /// [attackComplexity] Defined in CVSS v3, CVSS v2
  /// [attackVector] Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments. Defined in CVSS v3, CVSS v2
  /// [authentication] Defined in CVSS v2
  /// [availabilityImpact] Defined in CVSS v3, CVSS v2
  /// [baseScore] The base score is a function of the base metric scores.
  /// [confidentialityImpact] Defined in CVSS v3, CVSS v2
  /// [exploitabilityScore] Required.
  /// [impactScore] Required.
  /// [integrityImpact] Defined in CVSS v3, CVSS v2
  /// [privilegesRequired] Defined in CVSS v3
  /// [scope] Defined in CVSS v3
  /// [userInteraction] Defined in CVSS v3
  CVSSResponseContaineranalysisV1beta1({
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

  factory CVSSResponseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return CVSSResponseContaineranalysisV1beta1(
      attackComplexity: pulumi.Input.fromValue(
        map['attackComplexity'] as String,
      ),
      attackVector: pulumi.Input.fromValue(map['attackVector'] as String),
      authentication: pulumi.Input.fromValue(map['authentication'] as String),
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
