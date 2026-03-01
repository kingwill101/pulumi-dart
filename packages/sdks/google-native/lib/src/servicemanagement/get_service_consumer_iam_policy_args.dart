// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicemanagement_v1_get_service_consumer_iam_policy_args_doc}
/// Arguments for getServiceConsumerIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_servicemanagement_v1_get_service_consumer_iam_policy_args_doc}
class GetServiceConsumerIamPolicyArgs {
  final pulumi.Input<String> consumerId;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetServiceConsumerIamPolicyArgs].
  /// [consumerId] Required.
  /// [serviceId] Required.
  GetServiceConsumerIamPolicyArgs({
    required pulumi.Output<String> consumerId,
    required pulumi.Output<String> serviceId,
  }) :
      consumerId = pulumi.Input.asInput<String>(consumerId),
      serviceId = pulumi.Input.asInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerId': consumerId,
      'serviceId': serviceId,
    };
  }

  factory GetServiceConsumerIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceConsumerIamPolicyArgs(
      consumerId: pulumi.Output.create<String>(map['consumerId'] as String),
      serviceId: pulumi.Output.create<String>(map['serviceId'] as String),
    );
  }
}

