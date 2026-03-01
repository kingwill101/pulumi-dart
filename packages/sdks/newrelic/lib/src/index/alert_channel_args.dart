// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_channel_config.dart';

/// {@template pulumi_index_alert_channel_alert_channel_args_doc}
/// The set of arguments for AlertChannel.
/// {@endtemplate}
/// {@macro pulumi_index_alert_channel_alert_channel_args_doc}
class AlertChannelArgs {
  /// Determines the New Relic account where the alert channel will be created. Defaults to the account associated with the API key used.
  final pulumi.Input<String>? accountId;
  /// A nested block that describes an alert channel configuration.  Only one config block is permitted per alert channel definition.  See Nested config blocks below for details.
  final pulumi.Input<AlertChannelConfig>? config;
  /// The name of the channel.
  final pulumi.Input<String>? name;
  /// The type of channel.  One of: `email`, `slack`, `opsgenie`, `pagerduty`, `victorops`, or `webhook`.
  final pulumi.Input<String> type;

  /// Creates a new [AlertChannelArgs].
  /// [accountId] Determines the New Relic account where the alert channel will be created. Defaults to the account associated with the API key used.
  /// [config] A nested block that describes an alert channel configuration.  Only one config block is permitted per alert channel definition.  See Nested config blocks below for details.
  /// [name] The name of the channel.
  /// [type] The type of channel.  One of: `email`, `slack`, `opsgenie`, `pagerduty`, `victorops`, or `webhook`.
  AlertChannelArgs({
    pulumi.Output<String>? accountId,
    pulumi.Output<AlertChannelConfig>? config,
    pulumi.Output<String>? name,
    required pulumi.Output<String> type,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      config = pulumi.Input.asOptionalInput<AlertChannelConfig>(config),
      name = pulumi.Input.asOptionalInput<String>(name),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'config': ?pulumi.Input.mapOptionalInputValue<AlertChannelConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'name': ?name,
      'type': type,
    };
  }

  factory AlertChannelArgs.fromMap(Map<String, dynamic> map) {
    return AlertChannelArgs(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      config: map['config'] == null ? null : pulumi.Output.create<AlertChannelConfig>(AlertChannelConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

