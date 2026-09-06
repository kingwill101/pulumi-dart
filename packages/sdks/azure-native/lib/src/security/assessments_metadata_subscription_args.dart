// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_assessments_metadata_subscription_args_doc}
/// The set of arguments for AssessmentsMetadataSubscription.
/// {@endtemplate}
/// {@macro pulumi_security_assessments_metadata_subscription_args_doc}
class AssessmentsMetadataSubscriptionArgs {
  /// The Assessment Key - Unique key for the assessment type
  final pulumi.Input<String?>? assessmentMetadataName;
  /// BuiltIn if the assessment based on built-in Azure Policy definition, Custom if the assessment based on custom Azure Policy definition
  final pulumi.Input<dynamic> assessmentType;
  final pulumi.Input<List<dynamic>?>? categories;
  /// Human readable description of the assessment
  final pulumi.Input<String?>? description;
  /// User friendly display name of the assessment
  final pulumi.Input<String> displayName;
  /// The implementation effort required to remediate this assessment
  final pulumi.Input<dynamic>? implementationEffort;
  /// True if this assessment is in preview release status
  final pulumi.Input<bool?>? preview;
  /// Human readable description of what you should do to mitigate this security issue
  final pulumi.Input<String?>? remediationDescription;
  /// The severity level of the assessment
  final pulumi.Input<dynamic> severity;
  final pulumi.Input<List<dynamic>?>? threats;
  /// The user impact of the assessment
  final pulumi.Input<dynamic>? userImpact;

  /// Creates a new [AssessmentsMetadataSubscriptionArgs].
  /// [assessmentMetadataName] The Assessment Key - Unique key for the assessment type
  /// [assessmentType] BuiltIn if the assessment based on built-in Azure Policy definition, Custom if the assessment based on custom Azure Policy definition
  /// [categories] Optional.
  /// [description] Human readable description of the assessment
  /// [displayName] User friendly display name of the assessment
  /// [implementationEffort] The implementation effort required to remediate this assessment
  /// [preview] True if this assessment is in preview release status
  /// [remediationDescription] Human readable description of what you should do to mitigate this security issue
  /// [severity] The severity level of the assessment
  /// [threats] Optional.
  /// [userImpact] The user impact of the assessment
  const AssessmentsMetadataSubscriptionArgs({
    this.assessmentMetadataName,
    required this.assessmentType,
    this.categories,
    this.description,
    required this.displayName,
    this.implementationEffort,
    this.preview,
    this.remediationDescription,
    required this.severity,
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
      'preview': ?preview,
      'remediationDescription': ?remediationDescription,
      'severity': severity,
      'threats': ?threats,
      'userImpact': ?userImpact,
    };
  }

  factory AssessmentsMetadataSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentsMetadataSubscriptionArgs(
      assessmentMetadataName: (() { final guardedValue = map['assessmentMetadataName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      assessmentType: pulumi.Input.fromValue(map['assessmentType']),
      categories: (() { final guardedValue = map['categories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      implementationEffort: (() { final guardedValue = map['implementationEffort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      preview: (() { final guardedValue = map['preview']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      remediationDescription: (() { final guardedValue = map['remediationDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severity: pulumi.Input.fromValue(map['severity']),
      threats: (() { final guardedValue = map['threats']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      userImpact: (() { final guardedValue = map['userImpact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
