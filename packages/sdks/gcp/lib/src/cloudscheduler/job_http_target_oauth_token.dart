// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobHttpTargetOauthToken {
  /// OAuth scope to be used for generating OAuth access token. If not specified,
  /// "https://www.googleapis.com/auth/cloud-platform" will be used.
  final pulumi.Input<String?>? scope;
  /// Service account email to be used for generating OAuth token.
  /// The service account must be within the same project as the job.
  final pulumi.Input<String> serviceAccountEmail;

  /// Creates a new [JobHttpTargetOauthToken].
  /// [scope] OAuth scope to be used for generating OAuth access token. If not specified,
  /// [serviceAccountEmail] Service account email to be used for generating OAuth token.
  const JobHttpTargetOauthToken({
    this.scope,
    required this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope,
      'serviceAccountEmail': serviceAccountEmail,
    };
  }

  factory JobHttpTargetOauthToken.fromMap(Map<String, dynamic> map) {
    return JobHttpTargetOauthToken(
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountEmail: pulumi.Input.fromValue(map['serviceAccountEmail'] as String),
    );
  }
}
