// ignore_for_file: unused_element, unnecessary_cast

import 'security_assessment_metadata_partner_data_response.dart';
import 'security_assessment_metadata_properties_response_response_publish_dates.dart';

/// Result data returned by getAssessmentMetadataInSubscription.
class GetAssessmentMetadataInSubscriptionResult {
  /// BuiltIn if the assessment based on built-in Azure Policy definition, Custom if the assessment based on custom Azure Policy definition
  final String assessmentType;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  final List<String>? categories;
  /// Human readable description of the assessment
  final String? description;
  /// User friendly display name of the assessment
  final String displayName;
  /// Resource Id
  final String id;
  /// The implementation effort required to remediate this assessment
  final String? implementationEffort;
  /// Resource name
  final String name;
  /// Describes the partner that created the assessment
  final SecurityAssessmentMetadataPartnerDataResponse? partnerData;
  final String? plannedDeprecationDate;
  /// Azure resource ID of the policy definition that turns this assessment calculation on
  final String policyDefinitionId;
  /// True if this assessment is in preview release status
  final bool? preview;
  final SecurityAssessmentMetadataPropertiesResponseResponsePublishDates? publishDates;
  /// Human readable description of what you should do to mitigate this security issue
  final String? remediationDescription;
  /// The severity level of the assessment
  final String severity;
  final List<String>? tactics;
  final List<String>? techniques;
  final List<String>? threats;
  /// Resource type
  final String type;
  /// The user impact of the assessment
  final String? userImpact;

  /// Creates a new [GetAssessmentMetadataInSubscriptionResult].
  /// [assessmentType] BuiltIn if the assessment based on built-in Azure Policy definition, Custom if the assessment based on custom Azure Policy definition
  /// [azureApiVersion] The Azure API version of the resource.
  /// [categories] Optional.
  /// [description] Human readable description of the assessment
  /// [displayName] User friendly display name of the assessment
  /// [id] Resource Id
  /// [implementationEffort] The implementation effort required to remediate this assessment
  /// [name] Resource name
  /// [partnerData] Describes the partner that created the assessment
  /// [plannedDeprecationDate] Optional.
  /// [policyDefinitionId] Azure resource ID of the policy definition that turns this assessment calculation on
  /// [preview] True if this assessment is in preview release status
  /// [publishDates] Optional.
  /// [remediationDescription] Human readable description of what you should do to mitigate this security issue
  /// [severity] The severity level of the assessment
  /// [tactics] Optional.
  /// [techniques] Optional.
  /// [threats] Optional.
  /// [type] Resource type
  /// [userImpact] The user impact of the assessment
  GetAssessmentMetadataInSubscriptionResult({
    required this.assessmentType,
    required this.azureApiVersion,
    this.categories,
    this.description,
    required this.displayName,
    required this.id,
    this.implementationEffort,
    required this.name,
    this.partnerData,
    this.plannedDeprecationDate,
    required this.policyDefinitionId,
    this.preview,
    this.publishDates,
    this.remediationDescription,
    required this.severity,
    this.tactics,
    this.techniques,
    this.threats,
    required this.type,
    this.userImpact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentType': assessmentType,
      'azureApiVersion': azureApiVersion,
      'categories': ?categories,
      'description': ?description,
      'displayName': displayName,
      'id': id,
      'implementationEffort': ?implementationEffort,
      'name': name,
      'partnerData': ?partnerData == null ? null : partnerData!.toMap(),
      'plannedDeprecationDate': ?plannedDeprecationDate,
      'policyDefinitionId': policyDefinitionId,
      'preview': ?preview,
      'publishDates': ?publishDates == null ? null : publishDates!.toMap(),
      'remediationDescription': ?remediationDescription,
      'severity': severity,
      'tactics': ?tactics,
      'techniques': ?techniques,
      'threats': ?threats,
      'type': type,
      'userImpact': ?userImpact,
    };
  }

  factory GetAssessmentMetadataInSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetAssessmentMetadataInSubscriptionResult(
      assessmentType: map['assessmentType'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      categories: map['categories'] == null ? null : (map['categories']! as List).cast<String>(),
      description: map['description'] == null ? null : map['description']! as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      implementationEffort: map['implementationEffort'] == null ? null : map['implementationEffort']! as String,
      name: map['name'] as String,
      partnerData: map['partnerData'] == null ? null : SecurityAssessmentMetadataPartnerDataResponse.fromMap((map['partnerData']! as Map).cast<String, dynamic>()),
      plannedDeprecationDate: map['plannedDeprecationDate'] == null ? null : map['plannedDeprecationDate']! as String,
      policyDefinitionId: map['policyDefinitionId'] as String,
      preview: map['preview'] == null ? null : map['preview']! as bool,
      publishDates: map['publishDates'] == null ? null : SecurityAssessmentMetadataPropertiesResponseResponsePublishDates.fromMap((map['publishDates']! as Map).cast<String, dynamic>()),
      remediationDescription: map['remediationDescription'] == null ? null : map['remediationDescription']! as String,
      severity: map['severity'] as String,
      tactics: map['tactics'] == null ? null : (map['tactics']! as List).cast<String>(),
      techniques: map['techniques'] == null ? null : (map['techniques']! as List).cast<String>(),
      threats: map['threats'] == null ? null : (map['threats']! as List).cast<String>(),
      type: map['type'] as String,
      userImpact: map['userImpact'] == null ? null : map['userImpact']! as String,
    );
  }
}

