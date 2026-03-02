// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information needed for generating an [OAuth token](https://developers.google.com/identity/protocols/OAuth2). This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.
class OAuthTokenResponseCloudtasksV2beta2 {
  /// OAuth scope to be used for generating OAuth access token. If not specified, "https://www.googleapis.com/auth/cloud-platform" will be used.
  final pulumi.Input<String> scope;
  /// [Service account email](https://cloud.google.com/iam/docs/service-accounts) to be used for generating OAuth token. The service account must be within the same project as the queue. The caller must have iam.serviceAccounts.actAs permission for the service account.
  final pulumi.Input<String> serviceAccountEmail;

  /// Creates a new [OAuthTokenResponseCloudtasksV2beta2].
  /// [scope] OAuth scope to be used for generating OAuth access token. If not specified, "https://www.googleapis.com/auth/cloud-platform" will be used.
  /// [serviceAccountEmail] [Service account email](https://cloud.google.com/iam/docs/service-accounts) to be used for generating OAuth token. The service account must be within the same project as the queue. The caller must have iam.serviceAccounts.actAs permission for the service account.
  OAuthTokenResponseCloudtasksV2beta2({
    required this.scope,
    required this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': scope,
      'serviceAccountEmail': serviceAccountEmail,
    };
  }

  factory OAuthTokenResponseCloudtasksV2beta2.fromMap(Map<String, dynamic> map) {
    return OAuthTokenResponseCloudtasksV2beta2(
      scope: (map['scope'] as String).input(),
      serviceAccountEmail: (map['serviceAccountEmail'] as String).input(),
    );
  }
}

