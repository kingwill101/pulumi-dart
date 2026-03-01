// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_assessment_metadata_partner_data.dart';
import 'security_assessment_metadata_properties_response_publish_dates.dart';

/// {@template pulumi_security_assessment_metadata_in_subscription_args_doc}
/// The set of arguments for AssessmentMetadataInSubscription.
/// {@endtemplate}
/// {@macro pulumi_security_assessment_metadata_in_subscription_args_doc}
class AssessmentMetadataInSubscriptionArgs {
  /// The Assessment Key - Unique key for the assessment type
  final pulumi.Input<String>? assessmentMetadataName;
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
  final pulumi.Input<String>? plannedDeprecationDate;
  /// True if this assessment is in preview release status
  final pulumi.Input<bool>? preview;
  final pulumi.Input<SecurityAssessmentMetadataPropertiesResponsePublishDates>? publishDates;
  /// Human readable description of what you should do to mitigate this security issue
  final pulumi.Input<String>? remediationDescription;
  /// The severity level of the assessment
  final pulumi.Input<String> severity;
  final pulumi.Input<List<String>>? tactics;
  final pulumi.Input<List<String>>? techniques;
  final pulumi.Input<List<String>>? threats;
  /// The user impact of the assessment
  final pulumi.Input<String>? userImpact;

  /// Creates a new [AssessmentMetadataInSubscriptionArgs].
  /// [assessmentMetadataName] The Assessment Key - Unique key for the assessment type
  /// [assessmentType] BuiltIn if the assessment based on built-in Azure Policy definition, Custom if the assessment based on custom Azure Policy definition
  /// [categories] Optional.
  /// [description] Human readable description of the assessment
  /// [displayName] User friendly display name of the assessment
  /// [implementationEffort] The implementation effort required to remediate this assessment
  /// [partnerData] Describes the partner that created the assessment
  /// [plannedDeprecationDate] Optional.
  /// [preview] True if this assessment is in preview release status
  /// [publishDates] Optional.
  /// [remediationDescription] Human readable description of what you should do to mitigate this security issue
  /// [severity] The severity level of the assessment
  /// [tactics] Optional.
  /// [techniques] Optional.
  /// [threats] Optional.
  /// [userImpact] The user impact of the assessment
  AssessmentMetadataInSubscriptionArgs({
    pulumi.Output<String>? assessmentMetadataName,
    required pulumi.Output<String> assessmentType,
    pulumi.Output<List<String>>? categories,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? implementationEffort,
    pulumi.Output<SecurityAssessmentMetadataPartnerData>? partnerData,
    pulumi.Output<String>? plannedDeprecationDate,
    pulumi.Output<bool>? preview,
    pulumi.Output<SecurityAssessmentMetadataPropertiesResponsePublishDates>? publishDates,
    pulumi.Output<String>? remediationDescription,
    required pulumi.Output<String> severity,
    pulumi.Output<List<String>>? tactics,
    pulumi.Output<List<String>>? techniques,
    pulumi.Output<List<String>>? threats,
    pulumi.Output<String>? userImpact,
  }) :
      assessmentMetadataName = pulumi.Input.asOptionalInput<String>(assessmentMetadataName),
      assessmentType = pulumi.Input.asInput<String>(assessmentType),
      categories = pulumi.Input.asOptionalInput<List<String>>(categories),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      implementationEffort = pulumi.Input.asOptionalInput<String>(implementationEffort),
      partnerData = pulumi.Input.asOptionalInput<SecurityAssessmentMetadataPartnerData>(partnerData),
      plannedDeprecationDate = pulumi.Input.asOptionalInput<String>(plannedDeprecationDate),
      preview = pulumi.Input.asOptionalInput<bool>(preview),
      publishDates = pulumi.Input.asOptionalInput<SecurityAssessmentMetadataPropertiesResponsePublishDates>(publishDates),
      remediationDescription = pulumi.Input.asOptionalInput<String>(remediationDescription),
      severity = pulumi.Input.asInput<String>(severity),
      tactics = pulumi.Input.asOptionalInput<List<String>>(tactics),
      techniques = pulumi.Input.asOptionalInput<List<String>>(techniques),
      threats = pulumi.Input.asOptionalInput<List<String>>(threats),
      userImpact = pulumi.Input.asOptionalInput<String>(userImpact);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentMetadataName': ?assessmentMetadataName,
      'assessmentType': assessmentType,
      'categories': ?categories,
      'description': ?description,
      'displayName': displayName,
      'implementationEffort': ?implementationEffort,
      'partnerData': ?pulumi.Input.mapOptionalInputValue<SecurityAssessmentMetadataPartnerData, Map<String, dynamic>>(partnerData, (value) => value.toMap()),
      'plannedDeprecationDate': ?plannedDeprecationDate,
      'preview': ?preview,
      'publishDates': ?pulumi.Input.mapOptionalInputValue<SecurityAssessmentMetadataPropertiesResponsePublishDates, Map<String, dynamic>>(publishDates, (value) => value.toMap()),
      'remediationDescription': ?remediationDescription,
      'severity': severity,
      'tactics': ?tactics,
      'techniques': ?techniques,
      'threats': ?threats,
      'userImpact': ?userImpact,
    };
  }

  factory AssessmentMetadataInSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentMetadataInSubscriptionArgs(
      assessmentMetadataName: map['assessmentMetadataName'] == null ? null : pulumi.Output.create<String>(map['assessmentMetadataName'] as String),
      assessmentType: pulumi.Output.create<String>(map['assessmentType'] as String),
      categories: map['categories'] == null ? null : pulumi.Output.create<List<String>>((map['categories'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      implementationEffort: map['implementationEffort'] == null ? null : pulumi.Output.create<String>(map['implementationEffort'] as String),
      partnerData: map['partnerData'] == null ? null : pulumi.Output.create<SecurityAssessmentMetadataPartnerData>(SecurityAssessmentMetadataPartnerData.fromMap((map['partnerData'] as Map).cast<String, dynamic>())),
      plannedDeprecationDate: map['plannedDeprecationDate'] == null ? null : pulumi.Output.create<String>(map['plannedDeprecationDate'] as String),
      preview: map['preview'] == null ? null : pulumi.Output.create<bool>(map['preview'] as bool),
      publishDates: map['publishDates'] == null ? null : pulumi.Output.create<SecurityAssessmentMetadataPropertiesResponsePublishDates>(SecurityAssessmentMetadataPropertiesResponsePublishDates.fromMap((map['publishDates'] as Map).cast<String, dynamic>())),
      remediationDescription: map['remediationDescription'] == null ? null : pulumi.Output.create<String>(map['remediationDescription'] as String),
      severity: pulumi.Output.create<String>(map['severity'] as String),
      tactics: map['tactics'] == null ? null : pulumi.Output.create<List<String>>((map['tactics'] as List).cast<String>()),
      techniques: map['techniques'] == null ? null : pulumi.Output.create<List<String>>((map['techniques'] as List).cast<String>()),
      threats: map['threats'] == null ? null : pulumi.Output.create<List<String>>((map['threats'] as List).cast<String>()),
      userImpact: map['userImpact'] == null ? null : pulumi.Output.create<String>(map['userImpact'] as String),
    );
  }
}

