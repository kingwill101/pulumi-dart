// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of a NotificationHub FcmV1Credential.
class FcmV1Credential {
  /// Gets or sets client email.
  final pulumi.Input<String> clientEmail;
  /// Gets or sets private key.
  final pulumi.Input<String> privateKey;
  /// Gets or sets project id.
  final pulumi.Input<String> projectId;

  /// Creates a new [FcmV1Credential].
  /// [clientEmail] Gets or sets client email.
  /// [privateKey] Gets or sets private key.
  /// [projectId] Gets or sets project id.
  const FcmV1Credential({
    required this.clientEmail,
    required this.privateKey,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientEmail': clientEmail,
      'privateKey': privateKey,
      'projectId': projectId,
    };
  }

  factory FcmV1Credential.fromMap(Map<String, dynamic> map) {
    return FcmV1Credential(
      clientEmail: pulumi.Input.fromValue(map['clientEmail'] as String),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}
