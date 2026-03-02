// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlertChannelConfig {
  final pulumi.Input<String>? apiKey;
  final pulumi.Input<String>? authPassword;
  final pulumi.Input<String>? authType;
  final pulumi.Input<String>? authUsername;
  final pulumi.Input<String>? baseUrl;
  final pulumi.Input<String>? channel;
  final pulumi.Input<Map<String, String>>? headers;
  final pulumi.Input<String>? includeJsonAttachment;
  final pulumi.Input<String>? key;
  final pulumi.Input<Map<String, String>>? payload;
  final pulumi.Input<String>? payloadString;
  final pulumi.Input<String>? payloadType;
  final pulumi.Input<String>? recipients;
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? routeKey;
  final pulumi.Input<String>? serviceKey;
  final pulumi.Input<String>? tags;
  final pulumi.Input<String>? teams;
  final pulumi.Input<String>? url;
  final pulumi.Input<String>? userId;

  /// Creates a new [GetAlertChannelConfig].
  /// [apiKey] Optional.
  /// [authPassword] Optional.
  /// [authType] Optional.
  /// [authUsername] Optional.
  /// [baseUrl] Optional.
  /// [channel] Optional.
  /// [headers] Optional.
  /// [includeJsonAttachment] Optional.
  /// [key] Optional.
  /// [payload] Optional.
  /// [payloadString] Optional.
  /// [payloadType] Optional.
  /// [recipients] Optional.
  /// [region] Optional.
  /// [routeKey] Optional.
  /// [serviceKey] Optional.
  /// [tags] Optional.
  /// [teams] Optional.
  /// [url] Optional.
  /// [userId] Optional.
  GetAlertChannelConfig({
    this.apiKey,
    this.authPassword,
    this.authType,
    this.authUsername,
    this.baseUrl,
    this.channel,
    this.headers,
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

  factory GetAlertChannelConfig.fromMap(Map<String, dynamic> map) {
    return GetAlertChannelConfig(
      apiKey: map['apiKey'] == null ? null : (map['apiKey']! as String).input(),
      authPassword: map['authPassword'] == null ? null : (map['authPassword']! as String).input(),
      authType: map['authType'] == null ? null : (map['authType']! as String).input(),
      authUsername: map['authUsername'] == null ? null : (map['authUsername']! as String).input(),
      baseUrl: map['baseUrl'] == null ? null : (map['baseUrl']! as String).input(),
      channel: map['channel'] == null ? null : (map['channel']! as String).input(),
      headers: map['headers'] == null ? null : ((map['headers']! as Map).cast<String, String>()).input(),
      includeJsonAttachment: map['includeJsonAttachment'] == null ? null : (map['includeJsonAttachment']! as String).input(),
      key: map['key'] == null ? null : (map['key']! as String).input(),
      payload: map['payload'] == null ? null : ((map['payload']! as Map).cast<String, String>()).input(),
      payloadString: map['payloadString'] == null ? null : (map['payloadString']! as String).input(),
      payloadType: map['payloadType'] == null ? null : (map['payloadType']! as String).input(),
      recipients: map['recipients'] == null ? null : (map['recipients']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      routeKey: map['routeKey'] == null ? null : (map['routeKey']! as String).input(),
      serviceKey: map['serviceKey'] == null ? null : (map['serviceKey']! as String).input(),
      tags: map['tags'] == null ? null : (map['tags']! as String).input(),
      teams: map['teams'] == null ? null : (map['teams']! as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
      userId: map['userId'] == null ? null : (map['userId']! as String).input(),
    );
  }
}

