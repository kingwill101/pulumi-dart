// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsTrellixHxAlertsSettingsAuthenticationMsso {
  /// The login api endpoint url.
  /// This must be a valid URL with an http or https scheme. It has no default.
  final pulumi.Input<String>? apiEndpoint;
  /// Password of the account identified by username.
  /// There are no restrictions on the format of the password. It has no default,
  /// specifically enforced min / max length or character set. The password
  /// will have been provided by an MSSO administrator and it is assumed that
  /// they have provided a password that is internally consistent with MSSO
  /// authentication requirements / validation.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? password;
  /// Username for MSSO authentication.
  /// There are no restrictions on the format of the username. It has no default,
  /// specifically enforced min / max length or character set. The username
  /// will have been provided by an MSSO administrator and it is assumed that
  /// they have provided a username that is internally consistent with MSSO
  /// authentication requirements / validation.
  final pulumi.Input<String>? username;

  /// Creates a new [FeedDetailsTrellixHxAlertsSettingsAuthenticationMsso].
  /// [apiEndpoint] The login api endpoint url.
  /// [password] Password of the account identified by username.
  /// [username] Username for MSSO authentication.
  const FeedDetailsTrellixHxAlertsSettingsAuthenticationMsso({
    this.apiEndpoint,
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiEndpoint': ?apiEndpoint,
      'password': ?password,
      'username': ?username,
    };
  }

  factory FeedDetailsTrellixHxAlertsSettingsAuthenticationMsso.fromMap(Map<String, dynamic> map) {
    return FeedDetailsTrellixHxAlertsSettingsAuthenticationMsso(
      apiEndpoint: (() { final guardedValue = map['apiEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
