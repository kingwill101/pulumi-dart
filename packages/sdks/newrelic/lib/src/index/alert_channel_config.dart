// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertChannelConfig {
  /// The API key for integrating with OpsGenie.
  final pulumi.Input<String>? apiKey;
  /// Specifies an authentication password for use with a channel. Supported by the webhook channel type.
  final pulumi.Input<String>? authPassword;
  /// Specifies an authentication method for use with a channel. Supported by the webhook channel type. Only HTTP basic authentication is currently supported via the value BASIC.
  final pulumi.Input<String>? authType;
  /// Specifies an authentication username for use with a channel. Supported by the webhook channel type.
  final pulumi.Input<String>? authUsername;
  /// The base URL of the webhook destination.
  final pulumi.Input<String>? baseUrl;
  /// The Slack channel to send notifications to.
  final pulumi.Input<String>? channel;
  /// A map of key/value pairs that represents extra HTTP headers to be sent along with the webhook payload.
  final pulumi.Input<Map<String, String>>? headers;
  /// Use instead of headers if the desired payload is more complex than a list of key/value pairs (e.g. a set of headers that makes use of nested objects). The value provided should be a valid JSON string with escaped double quotes. Conflicts with headers.
  final pulumi.Input<String>? headersString;
  /// true or false. Flag for whether or not to attach a JSON document containing information about the associated alert to the email that is sent to recipients.
  final pulumi.Input<String>? includeJsonAttachment;
  /// The key for integrating with VictorOps.
  final pulumi.Input<String>? key;
  /// A map of key/value pairs that represents the webhook payload. Must provide payload_type if setting this argument.
  final pulumi.Input<Map<String, String>>? payload;
  /// Use instead of payload if the desired payload is more complex than a list of key/value pairs (e.g. a payload that makes use of nested objects). The value provided should be a valid JSON string with escaped double quotes. Conflicts with payload.
  final pulumi.Input<String>? payloadString;
  /// Can either be application/json or application/x-www-form-urlencoded. The payload_type argument is required if payload is set.
  final pulumi.Input<String>? payloadType;
  /// A set of recipients for targeting notifications. Multiple values are comma separated.
  final pulumi.Input<String>? recipients;
  /// The data center region to store your data. Valid values are US and EU. Default is US.
  final pulumi.Input<String>? region;
  /// The route key for integrating with VictorOps.
  final pulumi.Input<String>? routeKey;
  /// Specifies the service key for integrating with Pagerduty.
  final pulumi.Input<String>? serviceKey;
  /// A set of tags for targeting notifications. Multiple values are comma separated.
  final pulumi.Input<String>? tags;
  /// A set of teams for targeting notifications. Multiple values are comma separated.
  final pulumi.Input<String>? teams;
  /// Your organization's Slack URL.
  final pulumi.Input<String>? url;
  /// The user ID for use with the user channel type.
  final pulumi.Input<String>? userId;

  /// Creates a new [AlertChannelConfig].
  /// [apiKey] The API key for integrating with OpsGenie.
  /// [authPassword] Specifies an authentication password for use with a channel. Supported by the webhook channel type.
  /// [authType] Specifies an authentication method for use with a channel. Supported by the webhook channel type. Only HTTP basic authentication is currently supported via the value BASIC.
  /// [authUsername] Specifies an authentication username for use with a channel. Supported by the webhook channel type.
  /// [baseUrl] The base URL of the webhook destination.
  /// [channel] The Slack channel to send notifications to.
  /// [headers] A map of key/value pairs that represents extra HTTP headers to be sent along with the webhook payload.
  /// [headersString] Use instead of headers if the desired payload is more complex than a list of key/value pairs (e.g. a set of headers that makes use of nested objects). The value provided should be a valid JSON string with escaped double quotes. Conflicts with headers.
  /// [includeJsonAttachment] true or false. Flag for whether or not to attach a JSON document containing information about the associated alert to the email that is sent to recipients.
  /// [key] The key for integrating with VictorOps.
  /// [payload] A map of key/value pairs that represents the webhook payload. Must provide payload_type if setting this argument.
  /// [payloadString] Use instead of payload if the desired payload is more complex than a list of key/value pairs (e.g. a payload that makes use of nested objects). The value provided should be a valid JSON string with escaped double quotes. Conflicts with payload.
  /// [payloadType] Can either be application/json or application/x-www-form-urlencoded. The payload_type argument is required if payload is set.
  /// [recipients] A set of recipients for targeting notifications. Multiple values are comma separated.
  /// [region] The data center region to store your data. Valid values are US and EU. Default is US.
  /// [routeKey] The route key for integrating with VictorOps.
  /// [serviceKey] Specifies the service key for integrating with Pagerduty.
  /// [tags] A set of tags for targeting notifications. Multiple values are comma separated.
  /// [teams] A set of teams for targeting notifications. Multiple values are comma separated.
  /// [url] Your organization's Slack URL.
  /// [userId] The user ID for use with the user channel type.
  AlertChannelConfig({
    this.apiKey,
    this.authPassword,
    this.authType,
    this.authUsername,
    this.baseUrl,
    this.channel,
    this.headers,
    this.headersString,
    this.includeJsonAttachment,
    this.key,
    this.payload,
    this.payloadString,
    this.payloadType,
    this.recipients,
    this.region,
    this.routeKey,
    this.serviceKey,
    this.tags,
    this.teams,
    this.url,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'authPassword': ?authPassword,
      'authType': ?authType,
      'authUsername': ?authUsername,
      'baseUrl': ?baseUrl,
      'channel': ?channel,
      'headers': ?headers,
      'headersString': ?headersString,
      'includeJsonAttachment': ?includeJsonAttachment,
      'key': ?key,
      'payload': ?payload,
      'payloadString': ?payloadString,
      'payloadType': ?payloadType,
      'recipients': ?recipients,
      'region': ?region,
      'routeKey': ?routeKey,
      'serviceKey': ?serviceKey,
      'tags': ?tags,
      'teams': ?teams,
      'url': ?url,
      'userId': ?userId,
    };
  }

  factory AlertChannelConfig.fromMap(Map<String, dynamic> map) {
    return AlertChannelConfig(
      apiKey: map['apiKey'] == null ? null : (map['apiKey'] as String).input(),
      authPassword: map['authPassword'] == null ? null : (map['authPassword'] as String).input(),
      authType: map['authType'] == null ? null : (map['authType'] as String).input(),
      authUsername: map['authUsername'] == null ? null : (map['authUsername'] as String).input(),
      baseUrl: map['baseUrl'] == null ? null : (map['baseUrl'] as String).input(),
      channel: map['channel'] == null ? null : (map['channel'] as String).input(),
      headers: map['headers'] == null ? null : ((map['headers'] as Map).cast<String, String>()).input(),
      headersString: map['headersString'] == null ? null : (map['headersString'] as String).input(),
      includeJsonAttachment: map['includeJsonAttachment'] == null ? null : (map['includeJsonAttachment'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      payload: map['payload'] == null ? null : ((map['payload'] as Map).cast<String, String>()).input(),
      payloadString: map['payloadString'] == null ? null : (map['payloadString'] as String).input(),
      payloadType: map['payloadType'] == null ? null : (map['payloadType'] as String).input(),
      recipients: map['recipients'] == null ? null : (map['recipients'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      routeKey: map['routeKey'] == null ? null : (map['routeKey'] as String).input(),
      serviceKey: map['serviceKey'] == null ? null : (map['serviceKey'] as String).input(),
      tags: map['tags'] == null ? null : (map['tags'] as String).input(),
      teams: map['teams'] == null ? null : (map['teams'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
      userId: map['userId'] == null ? null : (map['userId'] as String).input(),
    );
  }
}

