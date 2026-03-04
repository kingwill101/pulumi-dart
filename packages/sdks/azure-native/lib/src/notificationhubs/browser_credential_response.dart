// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of a NotificationHub BrowserCredential.
class BrowserCredentialResponse {
  /// Gets or sets web push subject.
  final pulumi.Input<String> subject;

  /// Gets or sets VAPID private key.
  final pulumi.Input<String> vapidPrivateKey;

  /// Gets or sets VAPID public key.
  final pulumi.Input<String> vapidPublicKey;

  /// Creates a new [BrowserCredentialResponse].
  /// [subject] Gets or sets web push subject.
  /// [vapidPrivateKey] Gets or sets VAPID private key.
  /// [vapidPublicKey] Gets or sets VAPID public key.
  BrowserCredentialResponse({
    required this.subject,
    required this.vapidPrivateKey,
    required this.vapidPublicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subject': subject,
      'vapidPrivateKey': vapidPrivateKey,
      'vapidPublicKey': vapidPublicKey,
    };
  }

  factory BrowserCredentialResponse.fromMap(Map<String, dynamic> map) {
    return BrowserCredentialResponse(
      subject: pulumi.Input.fromValue(map['subject'] as String),
      vapidPrivateKey: pulumi.Input.fromValue(map['vapidPrivateKey'] as String),
      vapidPublicKey: pulumi.Input.fromValue(map['vapidPublicKey'] as String),
    );
  }
}
