// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of a NotificationHub BrowserCredential.
class BrowserCredential {
  /// Gets or sets web push subject.
  final pulumi.Input<String> subject;
  /// Gets or sets VAPID private key.
  final pulumi.Input<String> vapidPrivateKey;
  /// Gets or sets VAPID public key.
  final pulumi.Input<String> vapidPublicKey;

  /// Creates a new [BrowserCredential].
  /// [subject] Gets or sets web push subject.
  /// [vapidPrivateKey] Gets or sets VAPID private key.
  /// [vapidPublicKey] Gets or sets VAPID public key.
  const BrowserCredential({
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

  factory BrowserCredential.fromMap(Map<String, dynamic> map) {
    return BrowserCredential(
      subject: pulumi.Input.fromValue(map['subject'] as String),
      vapidPrivateKey: pulumi.Input.fromValue(map['vapidPrivateKey'] as String),
      vapidPublicKey: pulumi.Input.fromValue(map['vapidPublicKey'] as String),
    );
  }
}

