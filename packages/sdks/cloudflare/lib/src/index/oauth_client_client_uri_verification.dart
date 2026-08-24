// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OauthClientClientUriVerification {
  /// Current verification status for the client URI host.
  /// Available values: "pending", "inProgress", "verified", "failed".
  final pulumi.Input<String?>? status;
  /// Exact TXT record value that must be added to DNS to prove ownership of the client URI host.
  final pulumi.Input<String?>? text;

  /// Creates a new [OauthClientClientUriVerification].
  /// [status] Current verification status for the client URI host.
  /// [text] Exact TXT record value that must be added to DNS to prove ownership of the client URI host.
  const OauthClientClientUriVerification({
    this.status,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
      'text': ?text,
    };
  }

  factory OauthClientClientUriVerification.fromMap(Map<String, dynamic> map) {
    return OauthClientClientUriVerification(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
