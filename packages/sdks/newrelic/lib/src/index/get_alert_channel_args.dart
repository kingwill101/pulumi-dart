// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_alert_channel_get_alert_channel_args_doc}
/// Arguments for getAlertChannel.
/// {@endtemplate}
/// {@macro pulumi_index_get_alert_channel_get_alert_channel_args_doc}
class GetAlertChannelArgs {
  /// The New Relic account ID to operate on.  This allows you to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  final pulumi.Input<String>? accountId;
  /// The name of the alert channel in New Relic.
  final pulumi.Input<String> name;

  /// Creates a new [GetAlertChannelArgs].
  /// [accountId] The New Relic account ID to operate on.  This allows you to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  /// [name] The name of the alert channel in New Relic.
  GetAlertChannelArgs({
    this.accountId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'name': name,
    };
  }

  factory GetAlertChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetAlertChannelArgs(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

