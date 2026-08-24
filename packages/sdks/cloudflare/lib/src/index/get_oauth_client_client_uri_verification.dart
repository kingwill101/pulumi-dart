// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOauthClientClientUriVerification {
  /// Current verification status for the client URI host.
  /// Available values: "pending", "inProgress", "verified", "failed".
  final pulumi.Input<String> status;
  /// Exact TXT record value that must be added to DNS to prove ownership of the client URI host.
  final pulumi.Input<String> text;

  /// Creates a new [GetOauthClientClientUriVerification].
  /// [status] Current verification status for the client URI host.
  /// [text] Exact TXT record value that must be added to DNS to prove ownership of the client URI host.
  const GetOauthClientClientUriVerification({
    required this.status,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'text': text,
    };
  }

  factory GetOauthClientClientUriVerification.fromMap(Map<String, dynamic> map) {
    return GetOauthClientClientUriVerification(
      status: pulumi.Input.fromValue(map['status'] as String),
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
