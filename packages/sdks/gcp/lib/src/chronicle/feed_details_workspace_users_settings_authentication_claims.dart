// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsWorkspaceUsersSettingsAuthenticationClaims {
  /// Audience.
  final pulumi.Input<String?>? audience;
  /// Issuer. Usually the client_id.
  final pulumi.Input<String?>? issuer;
  /// Subject. Usually the email.
  final pulumi.Input<String?>? subject;

  /// Creates a new [FeedDetailsWorkspaceUsersSettingsAuthenticationClaims].
  /// [audience] Audience.
  /// [issuer] Issuer. Usually the client_id.
  /// [subject] Subject. Usually the email.
  const FeedDetailsWorkspaceUsersSettingsAuthenticationClaims({
    this.audience,
    this.issuer,
    this.subject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'issuer': ?issuer,
      'subject': ?subject,
    };
  }

  factory FeedDetailsWorkspaceUsersSettingsAuthenticationClaims.fromMap(Map<String, dynamic> map) {
    return FeedDetailsWorkspaceUsersSettingsAuthenticationClaims(
      audience: (() { final guardedValue = map['audience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
