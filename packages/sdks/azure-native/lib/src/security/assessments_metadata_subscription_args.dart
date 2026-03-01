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
    pulumi.Output<String>? assessmentMetadataName,
    required pulumi.Output<String> assessmentType,
    pulumi.Output<List<String>>? categories,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? implementationEffort,
    pulumi.Output<bool>? preview,
    pulumi.Output<String>? remediationDescription,
    required pulumi.Output<String> severity,
    pulumi.Output<List<String>>? threats,
    pulumi.Output<String>? userImpact,
  }) :
      assessmentMetadataName = pulumi.Input.asOptionalInput<String>(assessmentMetadataName),
      assessmentType = pulumi.Input.asInput<String>(assessmentType),
      categories = pulumi.Input.asOptionalInput<List<String>>(categories),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      implementationEffort = pulumi.Input.asOptionalInput<String>(implementationEffort),
      preview = pulumi.Input.asOptionalInput<bool>(preview),
      remediationDescription = pulumi.Input.asOptionalInput<String>(remediationDescription),
      severity = pulumi.Input.asInput<String>(severity),
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
      'preview': ?preview,
      'remediationDescription': ?remediationDescription,
      'severity': severity,
      'threats': ?threats,
      'userImpact': ?userImpact,
    };
  }

  factory AssessmentsMetadataSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentsMetadataSubscriptionArgs(
      assessmentMetadataName: map['assessmentMetadataName'] == null ? null : pulumi.Output.create<String>(map['assessmentMetadataName'] as String),
      assessmentType: pulumi.Output.create<String>(map['assessmentType'] as String),
      categories: map['categories'] == null ? null : pulumi.Output.create<List<String>>((map['categories'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      implementationEffort: map['implementationEffort'] == null ? null : pulumi.Output.create<String>(map['implementationEffort'] as String),
      preview: map['preview'] == null ? null : pulumi.Output.create<bool>(map['preview'] as bool),
      remediationDescription: map['remediationDescription'] == null ? null : pulumi.Output.create<String>(map['remediationDescription'] as String),
      severity: pulumi.Output.create<String>(map['severity'] as String),
      threats: map['threats'] == null ? null : pulumi.Output.create<List<String>>((map['threats'] as List).cast<String>()),
      userImpact: map['userImpact'] == null ? null : pulumi.Output.create<String>(map['userImpact'] as String),
    );
  }
}

