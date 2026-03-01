// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_assessment_metadata_in_subscription_args_doc}
/// Arguments for getAssessmentMetadataInSubscription.
/// {@endtemplate}
/// {@macro pulumi_security_get_assessment_metadata_in_subscription_args_doc}
class GetAssessmentMetadataInSubscriptionArgs {
  /// The Assessment Key - Unique key for the assessment type
  final pulumi.Input<String> assessmentMetadataName;

  /// Creates a new [GetAssessmentMetadataInSubscriptionArgs].
  /// [assessmentMetadataName] The Assessment Key - Unique key for the assessment type
  GetAssessmentMetadataInSubscriptionArgs({
    required pulumi.Output<String> assessmentMetadataName,
  }) :
      assessmentMetadataName = pulumi.Input.asInput<String>(assessmentMetadataName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentMetadataName': assessmentMetadataName,
    };
  }

  factory GetAssessmentMetadataInSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetAssessmentMetadataInSubscriptionArgs(
      assessmentMetadataName: pulumi.Output.create<String>(map['assessmentMetadataName'] as String),
    );
  }
}

