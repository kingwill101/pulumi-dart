// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_repricing_config.dart';

/// {@template pulumi_cloudchannel_v1_customer_repricing_config_args_doc}
/// The set of arguments for CustomerRepricingConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudchannel_v1_customer_repricing_config_args_doc}
class CustomerRepricingConfigArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> customerId;

  /// The configuration for bill modifications made by a reseller before sending it to customers.
  final pulumi.Input<GoogleCloudChannelV1RepricingConfig> repricingConfig;

  /// Creates a new [CustomerRepricingConfigArgs].
  /// [accountId] Required.
  /// [customerId] Required.
  /// [repricingConfig] The configuration for bill modifications made by a reseller before sending it to customers.
  CustomerRepricingConfigArgs({
    required this.accountId,
    required this.customerId,
    required this.repricingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'customerId': customerId,
      'repricingConfig':
          pulumi.Input.mapInputValue<
            GoogleCloudChannelV1RepricingConfig,
            Map<String, dynamic>
          >(repricingConfig, (value) => value.toMap()),
    };
  }

  factory CustomerRepricingConfigArgs.fromMap(Map<String, dynamic> map) {
    return CustomerRepricingConfigArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      customerId: pulumi.Input.fromValue(map['customerId'] as String),
      repricingConfig: pulumi.Input.fromValue(
        GoogleCloudChannelV1RepricingConfig.fromMap(
          (map['repricingConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
