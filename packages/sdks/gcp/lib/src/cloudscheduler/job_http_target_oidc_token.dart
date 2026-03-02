// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobHttpTargetOidcToken {
  /// Audience to be used when generating OIDC token. If not specified,
  /// the URI specified in target will be used.
  final pulumi.Input<String>? audience;
  /// Service account email to be used for generating OAuth token.
  /// The service account must be within the same project as the job.
  final pulumi.Input<String> serviceAccountEmail;

  /// Creates a new [JobHttpTargetOidcToken].
  /// [audience] Audience to be used when generating OIDC token. If not specified,
  /// [serviceAccountEmail] Service account email to be used for generating OAuth token.
  JobHttpTargetOidcToken({
    this.audience,
    required this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'serviceAccountEmail': serviceAccountEmail,
    };
  }

  factory JobHttpTargetOidcToken.fromMap(Map<String, dynamic> map) {
    return JobHttpTargetOidcToken(
      audience: map['audience'] == null ? null : (map['audience']! as String).input(),
      serviceAccountEmail: (map['serviceAccountEmail'] as String).input(),
    );
  }
}

