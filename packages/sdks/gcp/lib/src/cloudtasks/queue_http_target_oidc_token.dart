// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueHttpTargetOidcToken {
  /// Audience to be used when generating OIDC token. If not specified, the URI specified in target will be used.
  final pulumi.Input<String?>? audience;
  /// Service account email to be used for generating OIDC token.
  /// The service account must be within the same project as the queue.
  /// The caller must have iam.serviceAccounts.actAs permission for the service account.
  final pulumi.Input<String> serviceAccountEmail;

  /// Creates a new [QueueHttpTargetOidcToken].
  /// [audience] Audience to be used when generating OIDC token. If not specified, the URI specified in target will be used.
  /// [serviceAccountEmail] Service account email to be used for generating OIDC token.
  const QueueHttpTargetOidcToken({
    this.audience,
    required this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'serviceAccountEmail': serviceAccountEmail,
    };
  }

  factory QueueHttpTargetOidcToken.fromMap(Map<String, dynamic> map) {
    return QueueHttpTargetOidcToken(
      audience: (() { final guardedValue = map['audience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountEmail: pulumi.Input.fromValue(map['serviceAccountEmail'] as String),
    );
  }
}
