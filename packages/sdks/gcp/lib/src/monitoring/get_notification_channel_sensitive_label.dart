// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNotificationChannelSensitiveLabel {
  /// An authorization token for a notification channel. Channel types that support this field include: slack
  final pulumi.Input<String> authToken;

  /// An password for a notification channel. Channel types that support this field include: webhook_basicauth
  final pulumi.Input<String> password;

  /// An servicekey token for a notification channel. Channel types that support this field include: pagerduty
  final pulumi.Input<String> serviceKey;

  /// Creates a new [GetNotificationChannelSensitiveLabel].
  /// [authToken] An authorization token for a notification channel. Channel types that support this field include: slack
  /// [password] An password for a notification channel. Channel types that support this field include: webhook_basicauth
  /// [serviceKey] An servicekey token for a notification channel. Channel types that support this field include: pagerduty
  GetNotificationChannelSensitiveLabel({
    required this.authToken,
    required this.password,
    required this.serviceKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authToken': authToken,
      'password': password,
      'serviceKey': serviceKey,
    };
  }

  factory GetNotificationChannelSensitiveLabel.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNotificationChannelSensitiveLabel(
      authToken: pulumi.Input.fromValue(map['authToken'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      serviceKey: pulumi.Input.fromValue(map['serviceKey'] as String),
    );
  }
}
