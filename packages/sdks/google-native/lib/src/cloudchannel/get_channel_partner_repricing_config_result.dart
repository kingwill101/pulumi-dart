// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_channel_v1_repricing_config_response.dart';

/// Result data returned by getChannelPartnerRepricingConfig.
class GetChannelPartnerRepricingConfigResult {
  /// Resource name of the ChannelPartnerRepricingConfig. Format: accounts/{account_id}/channelPartnerLinks/{channel_partner_id}/channelPartnerRepricingConfigs/{id}.
  final String name;
  /// The configuration for bill modifications made by a reseller before sending it to ChannelPartner.
  final GoogleCloudChannelV1RepricingConfigResponse repricingConfig;
  /// Timestamp of an update to the repricing rule. If `update_time` is after RepricingConfig.effective_invoice_month then it indicates this was set mid-month.
  final String updateTime;

  /// Creates a new [GetChannelPartnerRepricingConfigResult].
  /// [name] Resource name of the ChannelPartnerRepricingConfig. Format: accounts/{account_id}/channelPartnerLinks/{channel_partner_id}/channelPartnerRepricingConfigs/{id}.
  /// [repricingConfig] The configuration for bill modifications made by a reseller before sending it to ChannelPartner.
  /// [updateTime] Timestamp of an update to the repricing rule. If `update_time` is after RepricingConfig.effective_invoice_month then it indicates this was set mid-month.
  const GetChannelPartnerRepricingConfigResult({
    required this.name,
    required this.repricingConfig,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'repricingConfig': repricingConfig.toMap(),
      'updateTime': updateTime,
    };
  }

  factory GetChannelPartnerRepricingConfigResult.fromMap(Map<String, dynamic> map) {
    return GetChannelPartnerRepricingConfigResult(
      name: map['name'] as String,
      repricingConfig: GoogleCloudChannelV1RepricingConfigResponse.fromMap((map['repricingConfig']! as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}
