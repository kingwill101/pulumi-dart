// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_status.dart';
import 'security_assessment_metadata_properties.dart';
import 'security_assessment_partner_data.dart';

/// {@template pulumi_security_assessment_args_doc}
/// The set of arguments for Assessment.
/// {@endtemplate}
/// {@macro pulumi_security_assessment_args_doc}
class AssessmentArgs {
  /// Additional data regarding the assessment
  final pulumi.Input<Map<String, String>?>? additionalData;
  /// The Assessment Key - Unique key for the assessment type
  final pulumi.Input<String?>? assessmentName;
  /// Describes properties of an assessment metadata.
  final pulumi.Input<SecurityAssessmentMetadataProperties?>? metadata;
  /// Data regarding 3rd party partner integration
  final pulumi.Input<SecurityAssessmentPartnerData?>? partnersData;
  /// Details of the resource that was assessed
  final pulumi.Input<dynamic> resourceDetails;
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
  const AssessmentArgs({
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
      'resourceDetails': resourceDetails,
      'resourceId': resourceId,
      'status': pulumi.Input.mapInputValue<AssessmentStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory AssessmentArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentArgs(
      additionalData: (() { final guardedValue = map['additionalData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      assessmentName: (() { final guardedValue = map['assessmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityAssessmentMetadataProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      partnersData: (() { final guardedValue = map['partnersData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityAssessmentPartnerData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceDetails: pulumi.Input.fromValue(map['resourceDetails']),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      status: pulumi.Input.fromValue(AssessmentStatus.fromMap((map['status']! as Map).cast<String, dynamic>())),
    );
  }
}
