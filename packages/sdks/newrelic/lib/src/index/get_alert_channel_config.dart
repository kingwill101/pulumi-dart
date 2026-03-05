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
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authPassword: (() { final guardedValue = map['authPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authUsername: (() { final guardedValue = map['authUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      baseUrl: (() { final guardedValue = map['baseUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      channel: (() { final guardedValue = map['channel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      includeJsonAttachment: (() { final guardedValue = map['includeJsonAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      payloadString: (() { final guardedValue = map['payloadString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payloadType: (() { final guardedValue = map['payloadType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recipients: (() { final guardedValue = map['recipients']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeKey: (() { final guardedValue = map['routeKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceKey: (() { final guardedValue = map['serviceKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      teams: (() { final guardedValue = map['teams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

