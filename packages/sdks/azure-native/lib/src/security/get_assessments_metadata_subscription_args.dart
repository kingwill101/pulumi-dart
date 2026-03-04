// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_assessments_metadata_subscription_args_doc}
/// Arguments for getAssessmentsMetadataSubscription.
/// {@endtemplate}
/// {@macro pulumi_security_get_assessments_metadata_subscription_args_doc}
class GetAssessmentsMetadataSubscriptionArgs {
  /// The Assessment Key - Unique key for the assessment type
  final pulumi.Input<String> assessmentMetadataName;

  /// Creates a new [GetAssessmentsMetadataSubscriptionArgs].
  /// [assessmentMetadataName] The Assessment Key - Unique key for the assessment type
  GetAssessmentsMetadataSubscriptionArgs({
    required this.assessmentMetadataName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'assessmentMetadataName': assessmentMetadataName};
  }

  factory GetAssessmentsMetadataSubscriptionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAssessmentsMetadataSubscriptionArgs(
      assessmentMetadataName: pulumi.Input.fromValue(
        map['assessmentMetadataName'] as String,
      ),
    );
  }
}
