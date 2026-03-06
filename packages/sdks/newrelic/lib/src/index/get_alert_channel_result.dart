// ignore_for_file: unused_element, unnecessary_cast

import 'get_alert_channel_config.dart';

/// Result data returned by getAlertChannel.
class GetAlertChannelResult {
  final String accountId;
  /// Alert channel configuration.
  final GetAlertChannelConfig config;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// A list of policy IDs associated with the alert channel.
  final List<String> policyIds;
  /// Alert channel type, either: `email`, `opsgenie`, `pagerduty`, `slack`, `victorops`, or `webhook`.
  final String type;

  /// Creates a new [GetAlertChannelResult].
  /// [accountId] Required.
  /// [config] Alert channel configuration.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [policyIds] A list of policy IDs associated with the alert channel.
  /// [type] Alert channel type, either: `email`, `opsgenie`, `pagerduty`, `slack`, `victorops`, or `webhook`.
  const GetAlertChannelResult({
    required this.accountId,
    required this.config,
    required this.id,
    required this.name,
    required this.policyIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'config': config.toMap(),
      'id': id,
      'name': name,
      'policyIds': policyIds,
      'type': type,
    };
  }

  factory GetAlertChannelResult.fromMap(Map<String, dynamic> map) {
    return GetAlertChannelResult(
      accountId: map['accountId'] as String,
      config: GetAlertChannelConfig.fromMap((map['config']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      name: map['name'] as String,
      policyIds: (map['policyIds'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

