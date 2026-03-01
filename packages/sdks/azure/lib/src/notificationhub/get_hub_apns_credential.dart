// ignore_for_file: unused_element, unnecessary_cast


class GetHubApnsCredential {
  /// The Application Mode which defines which server the APNS Messages should be sent to. Possible values are `Production` and `Sandbox`.
  final String applicationMode;
  /// The Bundle ID of the iOS/macOS application to send push notifications for, such as `com.org.example`.
  final String bundleId;
  /// The Apple Push Notifications Service (APNS) Key.
  final String keyId;
  /// The ID of the team the Token.
  final String teamId;
  /// The Push Token associated with the Apple Developer Account.
  final String token;

  /// Creates a new [GetHubApnsCredential].
  /// [applicationMode] The Application Mode which defines which server the APNS Messages should be sent to. Possible values are `Production` and `Sandbox`.
  /// [bundleId] The Bundle ID of the iOS/macOS application to send push notifications for, such as `com.org.example`.
  /// [keyId] The Apple Push Notifications Service (APNS) Key.
  /// [teamId] The ID of the team the Token.
  /// [token] The Push Token associated with the Apple Developer Account.
  GetHubApnsCredential({
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

  factory GetHubApnsCredential.fromMap(Map<String, dynamic> map) {
    return GetHubApnsCredential(
      applicationMode: map['applicationMode'] as String,
      bundleId: map['bundleId'] as String,
      keyId: map['keyId'] as String,
      teamId: map['teamId'] as String,
      token: map['token'] as String,
    );
  }
}

