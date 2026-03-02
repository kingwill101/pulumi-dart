// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_assessments_metadata_subscription_args_doc}
/// The set of arguments for AssessmentsMetadataSubscription.
/// {@endtemplate}
/// {@macro pulumi_security_assessments_metadata_subscription_args_doc}
class AssessmentsMetadataSubscriptionArgs {
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
  /// True if this assessment is in preview release status
  final pulumi.Input<bool>? preview;
  /// Human readable description of what you should do to mitigate this security issue
  final pulumi.Input<String>? remediationDescription;
  /// The severity level of the assessment
  final pulumi.Input<String> severity;
  final pulumi.Input<List<String>>? threats;
  /// The user impact of the assessment
  final pulumi.Input<String>? userImpact;

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
  AssessmentsMetadataSubscriptionArgs({
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
      assessmentMetadataName: map['assessmentMetadataName'] == null ? null : (map['assessmentMetadataName'] as String).input(),
      assessmentType: (map['assessmentType'] as String).input(),
      categories: map['categories'] == null ? null : ((map['categories'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      implementationEffort: map['implementationEffort'] == null ? null : (map['implementationEffort'] as String).input(),
      preview: map['preview'] == null ? null : (map['preview'] as bool).input(),
      remediationDescription: map['remediationDescription'] == null ? null : (map['remediationDescription'] as String).input(),
      severity: (map['severity'] as String).input(),
      threats: map['threats'] == null ? null : ((map['threats'] as List).cast<String>()).input(),
      userImpact: map['userImpact'] == null ? null : (map['userImpact'] as String).input(),
    );
  }
}

