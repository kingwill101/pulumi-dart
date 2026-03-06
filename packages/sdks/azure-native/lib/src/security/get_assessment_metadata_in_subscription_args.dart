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
  const GetAssessmentMetadataInSubscriptionArgs({
    required this.assessmentMetadataName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentMetadataName': assessmentMetadataName,
    };
  }

  factory GetAssessmentMetadataInSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetAssessmentMetadataInSubscriptionArgs(
      assessmentMetadataName: pulumi.Input.fromValue(map['assessmentMetadataName'] as String),
    );
  }
}

