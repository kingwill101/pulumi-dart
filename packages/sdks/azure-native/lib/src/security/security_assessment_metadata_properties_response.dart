// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_assessment_metadata_partner_data_response.dart';

/// Describes properties of an assessment metadata.
class SecurityAssessmentMetadataPropertiesResponse {
  /// BuiltIn if the assessment based on built-in Azure Policy definition, Custom if the assessment based on custom Azure Policy definition
  final pulumi.Input<String> assessmentType;
  final pulumi.Input<List<String>?>? categories;
  /// Human readable description of the assessment
  final pulumi.Input<String?>? description;
  /// User friendly display name of the assessment
  final pulumi.Input<String> displayName;
  /// The implementation effort required to remediate this assessment
  final pulumi.Input<String?>? implementationEffort;
  /// Describes the partner that created the assessment
  final pulumi.Input<SecurityAssessmentMetadataPartnerDataResponse?>? partnerData;
  /// Azure resource ID of the policy definition that turns this assessment calculation on
  final pulumi.Input<String> policyDefinitionId;
  /// True if this assessment is in preview release status
  final pulumi.Input<bool?>? preview;
  /// Human readable description of what you should do to mitigate this security issue
  final pulumi.Input<String?>? remediationDescription;
  /// The severity level of the assessment
  final pulumi.Input<String> severity;
  final pulumi.Input<List<String>?>? threats;
  /// The user impact of the assessment
  final pulumi.Input<String?>? userImpact;

  /// Creates a new [SecurityAssessmentMetadataPropertiesResponse].
  /// [assessmentType] BuiltIn if the assessment based on built-in Azure Policy definition, Custom if the assessment based on custom Azure Policy definition
  /// [categories] Optional.
  /// [description] Human readable description of the assessment
  /// [displayName] User friendly display name of the assessment
  /// [implementationEffort] The implementation effort required to remediate this assessment
  /// [partnerData] Describes the partner that created the assessment
  /// [policyDefinitionId] Azure resource ID of the policy definition that turns this assessment calculation on
  /// [preview] True if this assessment is in preview release status
  /// [remediationDescription] Human readable description of what you should do to mitigate this security issue
  /// [severity] The severity level of the assessment
  /// [threats] Optional.
  /// [userImpact] The user impact of the assessment
  const SecurityAssessmentMetadataPropertiesResponse({
    required this.assessmentType,
    this.categories,
    this.description,
    required this.displayName,
    this.implementationEffort,
    this.partnerData,
    required this.policyDefinitionId,
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
      'partnerData': ?pulumi.Input.mapOptionalInputValue<SecurityAssessmentMetadataPartnerDataResponse, Map<String, dynamic>>(partnerData, (value) => value.toMap()),
      'policyDefinitionId': policyDefinitionId,
      'preview': ?preview,
      'remediationDescription': ?remediationDescription,
      'severity': severity,
      'threats': ?threats,
      'userImpact': ?userImpact,
    };
  }

  factory SecurityAssessmentMetadataPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SecurityAssessmentMetadataPropertiesResponse(
      assessmentType: pulumi.Input.fromValue(map['assessmentType'] as String),
      categories: (() { final guardedValue = map['categories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      implementationEffort: (() { final guardedValue = map['implementationEffort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerData: (() { final guardedValue = map['partnerData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityAssessmentMetadataPartnerDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyDefinitionId: pulumi.Input.fromValue(map['policyDefinitionId'] as String),
      preview: (() { final guardedValue = map['preview']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      remediationDescription: (() { final guardedValue = map['remediationDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      threats: (() { final guardedValue = map['threats']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      userImpact: (() { final guardedValue = map['userImpact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
