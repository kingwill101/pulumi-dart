// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudchannel_v1_get_customer_repricing_config_args_doc}
/// Arguments for getCustomerRepricingConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudchannel_v1_get_customer_repricing_config_args_doc}
class GetCustomerRepricingConfigArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> customerId;
  final pulumi.Input<String> customerRepricingConfigId;

  /// Creates a new [GetCustomerRepricingConfigArgs].
  /// [accountId] Required.
  /// [customerId] Required.
  /// [customerRepricingConfigId] Required.
  GetCustomerRepricingConfigArgs({
    required pulumi.Output<String> accountId,
    required pulumi.Output<String> customerId,
    required pulumi.Output<String> customerRepricingConfigId,
  }) :
      accountId = pulumi.Input.asInput<String>(accountId),
      customerId = pulumi.Input.asInput<String>(customerId),
      customerRepricingConfigId = pulumi.Input.asInput<String>(customerRepricingConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'customerId': customerId,
      'customerRepricingConfigId': customerRepricingConfigId,
    };
  }

  factory GetCustomerRepricingConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomerRepricingConfigArgs(
      accountId: pulumi.Output.create<String>(map['accountId'] as String),
      customerId: pulumi.Output.create<String>(map['customerId'] as String),
      customerRepricingConfigId: pulumi.Output.create<String>(map['customerRepricingConfigId'] as String),
    );
  }
}

