// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountsResultSettings {
  /// Sets an abuse contact email to notify for abuse reports.
  final pulumi.Input<String> abuseContactEmail;
  /// Indicates whether membership in this account requires that
  /// Two-Factor Authentication is enabled
  final pulumi.Input<bool> enforceTwofactor;

  /// Creates a new [GetAccountsResultSettings].
  /// [abuseContactEmail] Sets an abuse contact email to notify for abuse reports.
  /// [enforceTwofactor] Indicates whether membership in this account requires that
  const GetAccountsResultSettings({
    required this.abuseContactEmail,
    required this.enforceTwofactor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abuseContactEmail': abuseContactEmail,
      'enforceTwofactor': enforceTwofactor,
    };
  }

  factory GetAccountsResultSettings.fromMap(Map<String, dynamic> map) {
    return GetAccountsResultSettings(
      abuseContactEmail: pulumi.Input.fromValue(map['abuseContactEmail'] as String),
      enforceTwofactor: pulumi.Input.fromValue(map['enforceTwofactor'] as bool),
    );
  }
}
