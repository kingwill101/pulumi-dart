// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HubApnsCredential {
  /// The Application Mode which defines which server the APNS Messages should be sent to. Possible values are `Production` and `Sandbox`.
  final pulumi.Input<String> applicationMode;
  /// The Bundle ID of the iOS/macOS application to send push notifications for, such as `com.org.example`.
  final pulumi.Input<String> bundleId;
  /// The Apple Push Notifications Service (APNS) Key.
  final pulumi.Input<String> keyId;
  /// The ID of the team the Token.
  final pulumi.Input<String> teamId;
  /// The Push Token associated with the Apple Developer Account. This is the contents of the `key` downloaded from [the Apple Developer Portal](https://developer.apple.com/account/ios/authkey/) between the `-----BEGIN PRIVATE KEY-----` and `-----END PRIVATE KEY-----` blocks.
  final pulumi.Input<String> token;

  /// Creates a new [HubApnsCredential].
  /// [applicationMode] The Application Mode which defines which server the APNS Messages should be sent to. Possible values are `Production` and `Sandbox`.
  /// [bundleId] The Bundle ID of the iOS/macOS application to send push notifications for, such as `com.org.example`.
  /// [keyId] The Apple Push Notifications Service (APNS) Key.
  /// [teamId] The ID of the team the Token.
  /// [token] The Push Token associated with the Apple Developer Account. This is the contents of the `key` downloaded from [the Apple Developer Portal](https://developer.apple.com/account/ios/authkey/) between the `-----BEGIN PRIVATE KEY-----` and `-----END PRIVATE KEY-----` blocks.
  HubApnsCredential({
    required this.applicationMode,
    required this.bundleId,
    required this.keyId,
    required this.teamId,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationMode': applicationMode,
      'bundleId': bundleId,
      'keyId': keyId,
      'teamId': teamId,
      'token': token,
    };
  }

  factory HubApnsCredential.fromMap(Map<String, dynamic> map) {
    return HubApnsCredential(
      applicationMode: (map['applicationMode'] as String).input(),
      bundleId: (map['bundleId'] as String).input(),
      keyId: (map['keyId'] as String).input(),
      teamId: (map['teamId'] as String).input(),
      token: (map['token'] as String).input(),
    );
  }
}

