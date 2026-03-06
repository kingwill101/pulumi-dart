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
  const GetCustomerRepricingConfigArgs({
    required this.accountId,
    required this.customerId,
    required this.customerRepricingConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'customerId': customerId,
      'customerRepricingConfigId': customerRepricingConfigId,
    };
  }

  factory GetCustomerRepricingConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomerRepricingConfigArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      customerId: pulumi.Input.fromValue(map['customerId'] as String),
      customerRepricingConfigId: pulumi.Input.fromValue(map['customerRepricingConfigId'] as String),
    );
  }
}

