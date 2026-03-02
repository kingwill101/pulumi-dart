// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_assessment_metadata_partner_data.dart';

/// Describes properties of an assessment metadata.
class SecurityAssessmentMetadataProperties {
  /// BuiltIn if the assessment based on built-in Azure Policy definition, Custom if the assessment based on custom Azure Policy definition
  final pulumi.Input<String> assessmentType;
  final pulumi.Input<List<String>>? categories;
  /// Human readable description of the assessment
  final pulumi.Input<String>? description;
  /// User friendly display name of the assessment
  final pulumi.Input<String> displayName;
  /// The implementation effort required to remediate this assessment
  final pulumi.Input<String>? implementationEffort;
  /// Describes the partner that created the assessment
  final pulumi.Input<SecurityAssessmentMetadataPartnerData>? partnerData;
  /// True if this assessment is in preview release status
  final pulumi.Input<bool>? preview;
  /// Human readable description of what you should do to mitigate this security issue
  final pulumi.Input<String>? remediationDescription;
  /// The severity level of the assessment
  final pulumi.Input<String> severity;
  final pulumi.Input<List<String>>? threats;
  /// The user impact of the assessment
  final pulumi.Input<String>? userImpact;

  /// Creates a new [SecurityAssessmentMetadataProperties].
  /// [assessmentType] BuiltIn if the assessment based on built-in Azure Policy definition, Custom if the assessment based on custom Azure Policy definition
  /// [categories] Optional.
  /// [description] Human readable description of the assessment
  /// [displayName] User friendly display name of the assessment
  /// [implementationEffort] The implementation effort required to remediate this assessment
  /// [partnerData] Describes the partner that created the assessment
  /// [preview] True if this assessment is in preview release status
  /// [remediationDescription] Human readable description of what you should do to mitigate this security issue
  /// [severity] The severity level of the assessment
  /// [threats] Optional.
  /// [userImpact] The user impact of the assessment
  SecurityAssessmentMetadataProperties({
    required this.assessmentType,
    this.categories,
    this.description,
    required this.displayName,
    this.implementationEffort,
    this.partnerData,
    this.preview,
    this.remediationDescription,
    required this.severity,
    this.threats,
    this.userImpact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentType': assessmentType,
      'categories': ?categories,
      'description': ?description,
      'displayName': displayName,
      'implementationEffort': ?implementationEffort,
      'partnerData': ?pulumi.Input.mapOptionalInputValue<SecurityAssessmentMetadataPartnerData, Map<String, dynamic>>(partnerData, (value) => value.toMap()),
      'preview': ?preview,
      'remediationDescription': ?remediationDescription,
      'severity': severity,
      'threats': ?threats,
      'userImpact': ?userImpact,
    };
  }

  factory SecurityAssessmentMetadataProperties.fromMap(Map<String, dynamic> map) {
    return SecurityAssessmentMetadataProperties(
      assessmentType: (map['assessmentType'] as String).input(),
      categories: map['categories'] == null ? null : ((map['categories']! as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      implementationEffort: map['implementationEffort'] == null ? null : (map['implementationEffort']! as String).input(),
      partnerData: map['partnerData'] == null ? null : (SecurityAssessmentMetadataPartnerData.fromMap((map['partnerData']! as Map).cast<String, dynamic>())).input(),
      preview: map['preview'] == null ? null : (map['preview']! as bool).input(),
      remediationDescription: map['remediationDescription'] == null ? null : (map['remediationDescription']! as String).input(),
      severity: (map['severity'] as String).input(),
      threats: map['threats'] == null ? null : ((map['threats']! as List).cast<String>()).input(),
      userImpact: map['userImpact'] == null ? null : (map['userImpact']! as String).input(),
    );
  }
}

