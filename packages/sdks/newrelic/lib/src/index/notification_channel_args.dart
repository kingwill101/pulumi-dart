// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_channel_property.dart';

/// {@template pulumi_index_notification_channel_notification_channel_args_doc}
/// The set of arguments for NotificationChannel.
/// {@endtemplate}
/// {@macro pulumi_index_notification_channel_notification_channel_args_doc}
class NotificationChannelArgs {
  /// Determines the New Relic account where the notification channel will be created. Defaults to the account associated with the API key used.
  final pulumi.Input<String>? accountId;
  /// Indicates whether the channel is active.
  final pulumi.Input<bool>? active;
  /// The id of the destination.
  final pulumi.Input<String> destinationId;
  /// The name of the channel.
  final pulumi.Input<String>? name;
  /// The type of product.  One of: `DISCUSSIONS`, `ERROR_TRACKING` or `IINT` (workflows).
  final pulumi.Input<String> product;
  /// A nested block that describes a notification channel property. See Nested property blocks below for details.
  final pulumi.Input<List<NotificationChannelProperty>> properties;
  /// The type of channel.  One of: `EMAIL`, `SERVICENOW_INCIDENTS`, `SERVICE_NOW_APP`, `WEBHOOK`, `JIRA_CLASSIC`, `MOBILE_PUSH`, `EVENT_BRIDGE`, `SLACK` and `SLACK_COLLABORATION`, `PAGERDUTY_ACCOUNT_INTEGRATION`, `PAGERDUTY_SERVICE_INTEGRATION`, `MICROSOFT_TEAMS` or `WORKFLOW_AUTOMATION`.
  final pulumi.Input<String> type;

  /// Creates a new [NotificationChannelArgs].
  /// [accountId] Determines the New Relic account where the notification channel will be created. Defaults to the account associated with the API key used.
  /// [active] Indicates whether the channel is active.
  /// [destinationId] The id of the destination.
  /// [name] The name of the channel.
  /// [product] The type of product.  One of: `DISCUSSIONS`, `ERROR_TRACKING` or `IINT` (workflows).
  /// [properties] A nested block that describes a notification channel property. See Nested property blocks below for details.
  /// [type] The type of channel.  One of: `EMAIL`, `SERVICENOW_INCIDENTS`, `SERVICE_NOW_APP`, `WEBHOOK`, `JIRA_CLASSIC`, `MOBILE_PUSH`, `EVENT_BRIDGE`, `SLACK` and `SLACK_COLLABORATION`, `PAGERDUTY_ACCOUNT_INTEGRATION`, `PAGERDUTY_SERVICE_INTEGRATION`, `MICROSOFT_TEAMS` or `WORKFLOW_AUTOMATION`.
  NotificationChannelArgs({
    pulumi.Output<String>? accountId,
    pulumi.Output<bool>? active,
    required pulumi.Output<String> destinationId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> product,
    required pulumi.Output<List<NotificationChannelProperty>> properties,
    required pulumi.Output<String> type,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      active = pulumi.Input.asOptionalInput<bool>(active),
      destinationId = pulumi.Input.asInput<String>(destinationId),
      name = pulumi.Input.asOptionalInput<String>(name),
      product = pulumi.Input.asInput<String>(product),
      properties = pulumi.Input.asInput<List<NotificationChannelProperty>>(properties),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'active': ?active,
      'destinationId': destinationId,
      'name': ?name,
      'product': product,
      'properties': pulumi.Input.mapInputValue<List<NotificationChannelProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<NotificationChannelProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory NotificationChannelArgs.fromMap(Map<String, dynamic> map) {
    return NotificationChannelArgs(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      active: map['active'] == null ? null : pulumi.Output.create<bool>(map['active'] as bool),
      destinationId: pulumi.Output.create<String>(map['destinationId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      product: pulumi.Output.create<String>(map['product'] as String),
      properties: pulumi.Output.create<List<NotificationChannelProperty>>(pulumi.Input.decodeList<NotificationChannelProperty>(map['properties'], (value) => NotificationChannelProperty.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

