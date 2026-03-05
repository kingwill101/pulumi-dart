// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_get_hl7_v2_store_iam_policy_get_hl7_v2_store_iam_policy_args_doc}
/// Arguments for getHl7V2StoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_healthcare_get_hl7_v2_store_iam_policy_get_hl7_v2_store_iam_policy_args_doc}
class GetHl7V2StoreIamPolicyArgs {
  /// The HL7v2 store ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}/{hl7_v2_store_name}` or
  /// `{location_name}/{dataset_name}/{hl7_v2_store_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final pulumi.Input<String> hl7V2StoreId;

  /// Creates a new [GetHl7V2StoreIamPolicyArgs].
  /// [hl7V2StoreId] The HL7v2 store ID, in the form
  GetHl7V2StoreIamPolicyArgs({
    required this.hl7V2StoreId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hl7V2StoreId': hl7V2StoreId,
    };
  }

  factory GetHl7V2StoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetHl7V2StoreIamPolicyArgs(
      hl7V2StoreId: pulumi.Input.fromValue(map['hl7V2StoreId'] as String),
    );
  }
}

