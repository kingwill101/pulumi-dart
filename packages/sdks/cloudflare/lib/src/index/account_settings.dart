// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountSettings {
  /// Sets an abuse contact email to notify for abuse reports.
  final pulumi.Input<String?>? abuseContactEmail;
  /// Indicates whether membership in this account requires that
  /// Two-Factor Authentication is enabled
  final pulumi.Input<bool?>? enforceTwofactor;

  /// Creates a new [AccountSettings].
  /// [abuseContactEmail] Sets an abuse contact email to notify for abuse reports.
  /// [enforceTwofactor] Indicates whether membership in this account requires that
  const AccountSettings({
    this.abuseContactEmail,
    this.enforceTwofactor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abuseContactEmail': ?abuseContactEmail,
      'enforceTwofactor': ?enforceTwofactor,
    };
  }

  factory AccountSettings.fromMap(Map<String, dynamic> map) {
    return AccountSettings(
      abuseContactEmail: (() { final guardedValue = map['abuseContactEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enforceTwofactor: (() { final guardedValue = map['enforceTwofactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
