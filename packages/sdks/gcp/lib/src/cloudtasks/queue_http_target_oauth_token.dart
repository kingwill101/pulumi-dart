// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueHttpTargetOauthToken {
  /// OAuth scope to be used for generating OAuth access token.
  /// If not specified, "https://www.googleapis.com/auth/cloud-platform" will be used.
  final pulumi.Input<String>? scope;
  /// Service account email to be used for generating OAuth token.
  /// The service account must be within the same project as the queue.
  /// The caller must have iam.serviceAccounts.actAs permission for the service account.
  final pulumi.Input<String> serviceAccountEmail;

  /// Creates a new [QueueHttpTargetOauthToken].
  /// [scope] OAuth scope to be used for generating OAuth access token.
  /// [serviceAccountEmail] Service account email to be used for generating OAuth token.
  QueueHttpTargetOauthToken({
    this.scope,
    required this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope,
      'serviceAccountEmail': serviceAccountEmail,
    };
  }

  factory QueueHttpTargetOauthToken.fromMap(Map<String, dynamic> map) {
    return QueueHttpTargetOauthToken(
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      serviceAccountEmail: (map['serviceAccountEmail'] as String).input(),
    );
  }
}

