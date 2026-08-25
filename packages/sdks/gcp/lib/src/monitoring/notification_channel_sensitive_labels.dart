// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotificationChannelSensitiveLabels {
  /// An authorization token for a notification channel. Channel types that support this field include: slack
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? authToken;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// An authorization token for a notification channel. Channel types that support this field include: slack
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `authToken` or `authTokenWo` can only be set.
  final pulumi.Input<String?>? authTokenWo;
  /// Triggers update of `authTokenWo` write-only. Increment this value when an update to `authTokenWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String?>? authTokenWoVersion;
  /// An password for a notification channel. Channel types that support this field include: webhookBasicauth
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? password;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// An password for a notification channel. Channel types that support this field include: webhookBasicauth
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `password` or `passwordWo` can only be set.
  final pulumi.Input<String?>? passwordWo;
  /// Triggers update of `passwordWo` write-only. Increment this value when an update to `passwordWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String?>? passwordWoVersion;
  /// An servicekey token for a notification channel. Channel types that support this field include: pagerduty
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? serviceKey;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// An servicekey token for a notification channel. Channel types that support this field include: pagerduty
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `serviceKey` or `serviceKeyWo` can only be set.
  final pulumi.Input<String?>? serviceKeyWo;
  /// Triggers update of `serviceKeyWo` write-only. Increment this value when an update to `serviceKeyWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String?>? serviceKeyWoVersion;

  /// Creates a new [NotificationChannelSensitiveLabels].
  /// [authToken] An authorization token for a notification channel. Channel types that support this field include: slack
  /// [authTokenWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [authTokenWoVersion] Triggers update of `authTokenWo` write-only. Increment this value when an update to `authTokenWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [password] An password for a notification channel. Channel types that support this field include: webhookBasicauth
  /// [passwordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [passwordWoVersion] Triggers update of `passwordWo` write-only. Increment this value when an update to `passwordWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [serviceKey] An servicekey token for a notification channel. Channel types that support this field include: pagerduty
  /// [serviceKeyWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [serviceKeyWoVersion] Triggers update of `serviceKeyWo` write-only. Increment this value when an update to `serviceKeyWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  const NotificationChannelSensitiveLabels({
    this.authToken,
    this.authTokenWo,
    this.authTokenWoVersion,
    this.password,
    this.passwordWo,
    this.passwordWoVersion,
    this.serviceKey,
    this.serviceKeyWo,
    this.serviceKeyWoVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authToken': ?authToken,
      'authTokenWo': ?authTokenWo,
      'authTokenWoVersion': ?authTokenWoVersion,
      'password': ?password,
      'passwordWo': ?passwordWo,
      'passwordWoVersion': ?passwordWoVersion,
      'serviceKey': ?serviceKey,
      'serviceKeyWo': ?serviceKeyWo,
      'serviceKeyWoVersion': ?serviceKeyWoVersion,
    };
  }

  factory NotificationChannelSensitiveLabels.fromMap(Map<String, dynamic> map) {
    return NotificationChannelSensitiveLabels(
      authToken: (() { final guardedValue = map['authToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authTokenWo: (() { final guardedValue = map['authTokenWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authTokenWoVersion: (() { final guardedValue = map['authTokenWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordWo: (() { final guardedValue = map['passwordWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordWoVersion: (() { final guardedValue = map['passwordWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceKey: (() { final guardedValue = map['serviceKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceKeyWo: (() { final guardedValue = map['serviceKeyWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceKeyWoVersion: (() { final guardedValue = map['serviceKeyWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
