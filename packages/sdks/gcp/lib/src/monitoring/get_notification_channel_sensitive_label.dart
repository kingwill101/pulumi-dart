// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNotificationChannelSensitiveLabel {
  /// An authorization token for a notification channel. Channel types that support this field include: slack
  final pulumi.Input<String> authToken;
  /// An authorization token for a notification channel. Channel types that support this field include: slack
  final pulumi.Input<String> authTokenWo;
  /// Triggers update of 'auth_token_wo' write-only. Increment this value when an update to 'auth_token_wo' is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String> authTokenWoVersion;
  /// An password for a notification channel. Channel types that support this field include: webhook_basicauth
  final pulumi.Input<String> password;
  /// An password for a notification channel. Channel types that support this field include: webhook_basicauth
  final pulumi.Input<String> passwordWo;
  /// Triggers update of 'password_wo' write-only. Increment this value when an update to 'password_wo' is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String> passwordWoVersion;
  /// An servicekey token for a notification channel. Channel types that support this field include: pagerduty
  final pulumi.Input<String> serviceKey;
  /// An servicekey token for a notification channel. Channel types that support this field include: pagerduty
  final pulumi.Input<String> serviceKeyWo;
  /// Triggers update of 'service_key_wo' write-only. Increment this value when an update to 'service_key_wo' is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String> serviceKeyWoVersion;

  /// Creates a new [GetNotificationChannelSensitiveLabel].
  /// [authToken] An authorization token for a notification channel. Channel types that support this field include: slack
  /// [authTokenWo] An authorization token for a notification channel. Channel types that support this field include: slack
  /// [authTokenWoVersion] Triggers update of 'auth_token_wo' write-only. Increment this value when an update to 'auth_token_wo' is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [password] An password for a notification channel. Channel types that support this field include: webhook_basicauth
  /// [passwordWo] An password for a notification channel. Channel types that support this field include: webhook_basicauth
  /// [passwordWoVersion] Triggers update of 'password_wo' write-only. Increment this value when an update to 'password_wo' is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [serviceKey] An servicekey token for a notification channel. Channel types that support this field include: pagerduty
  /// [serviceKeyWo] An servicekey token for a notification channel. Channel types that support this field include: pagerduty
  /// [serviceKeyWoVersion] Triggers update of 'service_key_wo' write-only. Increment this value when an update to 'service_key_wo' is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  const GetNotificationChannelSensitiveLabel({
    required this.authToken,
    required this.authTokenWo,
    required this.authTokenWoVersion,
    required this.password,
    required this.passwordWo,
    required this.passwordWoVersion,
    required this.serviceKey,
    required this.serviceKeyWo,
    required this.serviceKeyWoVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authToken': authToken,
      'authTokenWo': authTokenWo,
      'authTokenWoVersion': authTokenWoVersion,
      'password': password,
      'passwordWo': passwordWo,
      'passwordWoVersion': passwordWoVersion,
      'serviceKey': serviceKey,
      'serviceKeyWo': serviceKeyWo,
      'serviceKeyWoVersion': serviceKeyWoVersion,
    };
  }

  factory GetNotificationChannelSensitiveLabel.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelSensitiveLabel(
      authToken: pulumi.Input.fromValue(map['authToken'] as String),
      authTokenWo: pulumi.Input.fromValue(map['authTokenWo'] as String),
      authTokenWoVersion: pulumi.Input.fromValue(map['authTokenWoVersion'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      passwordWo: pulumi.Input.fromValue(map['passwordWo'] as String),
      passwordWoVersion: pulumi.Input.fromValue(map['passwordWoVersion'] as String),
      serviceKey: pulumi.Input.fromValue(map['serviceKey'] as String),
      serviceKeyWo: pulumi.Input.fromValue(map['serviceKeyWo'] as String),
      serviceKeyWoVersion: pulumi.Input.fromValue(map['serviceKeyWoVersion'] as String),
    );
  }
}
