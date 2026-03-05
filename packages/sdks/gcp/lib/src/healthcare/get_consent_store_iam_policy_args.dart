// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_get_consent_store_iam_policy_get_consent_store_iam_policy_args_doc}
/// Arguments for getConsentStoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_healthcare_get_consent_store_iam_policy_get_consent_store_iam_policy_args_doc}
class GetConsentStoreIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> consentStoreId;
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> dataset;

  /// Creates a new [GetConsentStoreIamPolicyArgs].
  /// [consentStoreId] Used to find the parent resource to bind the IAM policy to
  /// [dataset] Identifies the dataset addressed by this request. Must be in the format
  GetConsentStoreIamPolicyArgs({
    required this.consentStoreId,
    required this.dataset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consentStoreId': consentStoreId,
      'dataset': dataset,
    };
  }

  factory GetConsentStoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetConsentStoreIamPolicyArgs(
      consentStoreId: pulumi.Input.fromValue(map['consentStoreId'] as String),
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
    );
  }
}

