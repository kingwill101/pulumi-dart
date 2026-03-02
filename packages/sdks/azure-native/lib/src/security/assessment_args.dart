// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_status.dart';
import 'azure_resource_details.dart';
import 'security_assessment_metadata_properties.dart';
import 'security_assessment_partner_data.dart';

/// {@template pulumi_security_assessment_args_doc}
/// The set of arguments for Assessment.
/// {@endtemplate}
/// {@macro pulumi_security_assessment_args_doc}
class AssessmentArgs {
  /// Additional data regarding the assessment
  final pulumi.Input<Map<String, String>>? additionalData;
  /// The Assessment Key - Unique key for the assessment type
  final pulumi.Input<String>? assessmentName;
  /// Describes properties of an assessment metadata.
  final pulumi.Input<SecurityAssessmentMetadataProperties>? metadata;
  /// Data regarding 3rd party partner integration
  final pulumi.Input<SecurityAssessmentPartnerData>? partnersData;
  /// Details of the resource that was assessed
  final pulumi.Input<AzureResourceDetails> resourceDetails;
  /// The identifier of the resource.
  final pulumi.Input<String> resourceId;
  /// The result of the assessment
  final pulumi.Input<AssessmentStatus> status;

  /// Creates a new [AssessmentArgs].
  /// [additionalData] Additional data regarding the assessment
  /// [assessmentName] The Assessment Key - Unique key for the assessment type
  /// [metadata] Describes properties of an assessment metadata.
  /// [partnersData] Data regarding 3rd party partner integration
  /// [resourceDetails] Details of the resource that was assessed
  /// [resourceId] The identifier of the resource.
  /// [status] The result of the assessment
  AssessmentArgs({
    this.additionalData,
    this.assessmentName,
    this.metadata,
    this.partnersData,
    required this.resourceDetails,
    required this.resourceId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalData': ?additionalData,
      'assessmentName': ?assessmentName,
      'metadata': ?pulumi.Input.mapOptionalInputValue<SecurityAssessmentMetadataProperties, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'partnersData': ?pulumi.Input.mapOptionalInputValue<SecurityAssessmentPartnerData, Map<String, dynamic>>(partnersData, (value) => value.toMap()),
      'resourceDetails': pulumi.Input.mapInputValue<AzureResourceDetails, Map<String, dynamic>>(resourceDetails, (value) => value.toMap()),
      'resourceId': resourceId,
      'status': pulumi.Input.mapInputValue<AssessmentStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory AssessmentArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentArgs(
      additionalData: map['additionalData'] == null ? null : ((map['additionalData'] as Map).cast<String, String>()).input(),
      assessmentName: map['assessmentName'] == null ? null : (map['assessmentName'] as String).input(),
      metadata: map['metadata'] == null ? null : (SecurityAssessmentMetadataProperties.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      partnersData: map['partnersData'] == null ? null : (SecurityAssessmentPartnerData.fromMap((map['partnersData'] as Map).cast<String, dynamic>())).input(),
      resourceDetails: (AzureResourceDetails.fromMap((map['resourceDetails'] as Map).cast<String, dynamic>())).input(),
      resourceId: (map['resourceId'] as String).input(),
      status: (AssessmentStatus.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

