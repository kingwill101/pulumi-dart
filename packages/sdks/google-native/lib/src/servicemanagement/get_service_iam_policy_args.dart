// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicemanagement_v1_get_service_iam_policy_args_doc}
/// Arguments for getServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_servicemanagement_v1_get_service_iam_policy_args_doc}
class GetServiceIamPolicyArgs {
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetServiceIamPolicyArgs].
  /// [serviceId] Required.
  GetServiceIamPolicyArgs({required this.serviceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'serviceId': serviceId};
  }

  factory GetServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceIamPolicyArgs(
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
    );
  }
}
