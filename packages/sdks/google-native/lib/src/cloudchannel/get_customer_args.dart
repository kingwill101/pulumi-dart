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
    required this.accountId,
    required this.channelPartnerLinkId,
    required this.customerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'channelPartnerLinkId': channelPartnerLinkId,
      'customerId': customerId,
    };
  }

  factory GetCustomerArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomerArgs(
      accountId: (map['accountId'] as String).input(),
      channelPartnerLinkId: (map['channelPartnerLinkId'] as String).input(),
      customerId: (map['customerId'] as String).input(),
    );
  }
}

