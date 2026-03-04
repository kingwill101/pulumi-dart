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
  final pulumi.Input<SecurityAssessmentMetadataPropertiesResponsePublishDates>?
  publishDates;

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
    this.assessmentMetadataName,
    required this.assessmentType,
    this.categories,
    this.description,
    required this.displayName,
    this.implementationEffort,
    this.partnerData,
    this.plannedDeprecationDate,
    this.preview,
    this.publishDates,
    this.remediationDescription,
    required this.severity,
    this.tactics,
    this.techniques,
    this.threats,
    this.userImpact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentMetadataName': ?assessmentMetadataName,
      'assessmentType': assessmentType,
      'categories': ?categories,
      'description': ?description,
      'displayName': displayName,
      'implementationEffort': ?implementationEffort,
      'partnerData':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityAssessmentMetadataPartnerData,
            Map<String, dynamic>
          >(partnerData, (value) => value.toMap()),
      'plannedDeprecationDate': ?plannedDeprecationDate,
      'preview': ?preview,
      'publishDates':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityAssessmentMetadataPropertiesResponsePublishDates,
            Map<String, dynamic>
          >(publishDates, (value) => value.toMap()),
      'remediationDescription': ?remediationDescription,
      'severity': severity,
      'tactics': ?tactics,
      'techniques': ?techniques,
      'threats': ?threats,
      'userImpact': ?userImpact,
    };
  }

  factory AssessmentMetadataInSubscriptionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return AssessmentMetadataInSubscriptionArgs(
      assessmentMetadataName: (() {
        final guardedValue = map['assessmentMetadataName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      assessmentType: pulumi.Input.fromValue(map['assessmentType'] as String),
      categories: (() {
        final guardedValue = map['categories'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      implementationEffort: (() {
        final guardedValue = map['implementationEffort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      partnerData: (() {
        final guardedValue = map['partnerData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecurityAssessmentMetadataPartnerData.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      plannedDeprecationDate: (() {
        final guardedValue = map['plannedDeprecationDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preview: (() {
        final guardedValue = map['preview'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      publishDates: (() {
        final guardedValue = map['publishDates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecurityAssessmentMetadataPropertiesResponsePublishDates.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      remediationDescription: (() {
        final guardedValue = map['remediationDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      tactics: (() {
        final guardedValue = map['tactics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      techniques: (() {
        final guardedValue = map['techniques'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      threats: (() {
        final guardedValue = map['threats'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      userImpact: (() {
        final guardedValue = map['userImpact'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
