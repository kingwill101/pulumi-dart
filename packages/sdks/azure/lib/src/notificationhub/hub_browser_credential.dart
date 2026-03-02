// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HubBrowserCredential {
  /// The subject name of web push.
  final pulumi.Input<String> subject;
  /// The Voluntary Application Server Identification (VAPID) private key.
  final pulumi.Input<String> vapidPrivateKey;
  /// The Voluntary Application Server Identification (VAPID) public key.
  final pulumi.Input<String> vapidPublicKey;

  /// Creates a new [HubBrowserCredential].
  /// [subject] The subject name of web push.
  /// [vapidPrivateKey] The Voluntary Application Server Identification (VAPID) private key.
  /// [vapidPublicKey] The Voluntary Application Server Identification (VAPID) public key.
  HubBrowserCredential({
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

  factory HubBrowserCredential.fromMap(Map<String, dynamic> map) {
    return HubBrowserCredential(
      subject: (map['subject'] as String).input(),
      vapidPrivateKey: (map['vapidPrivateKey'] as String).input(),
      vapidPublicKey: (map['vapidPublicKey'] as String).input(),
    );
  }
}

