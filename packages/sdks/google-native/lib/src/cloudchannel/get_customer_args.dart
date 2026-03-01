// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudchannel_v1_get_customer_args_doc}
/// Arguments for getCustomer.
/// {@endtemplate}
/// {@macro pulumi_cloudchannel_v1_get_customer_args_doc}
class GetCustomerArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> channelPartnerLinkId;
  final pulumi.Input<String> customerId;

  /// Creates a new [GetCustomerArgs].
  /// [accountId] Required.
  /// [channelPartnerLinkId] Required.
  /// [customerId] Required.
  GetCustomerArgs({
    required pulumi.Output<String> accountId,
    required pulumi.Output<String> channelPartnerLinkId,
    required pulumi.Output<String> customerId,
  }) :
      accountId = pulumi.Input.asInput<String>(accountId),
      channelPartnerLinkId = pulumi.Input.asInput<String>(channelPartnerLinkId),
      customerId = pulumi.Input.asInput<String>(customerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'channelPartnerLinkId': channelPartnerLinkId,
      'customerId': customerId,
    };
  }

  factory GetCustomerArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomerArgs(
      accountId: pulumi.Output.create<String>(map['accountId'] as String),
      channelPartnerLinkId: pulumi.Output.create<String>(map['channelPartnerLinkId'] as String),
      customerId: pulumi.Output.create<String>(map['customerId'] as String),
    );
  }
}

