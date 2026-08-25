// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineDestinationAuthenticationConfigOauthToken {
  /// OAuth scope to be used for generating OAuth access token. If not
  /// specified, "https://www.googleapis.com/auth/cloud-platform" will be
  /// used.
  final pulumi.Input<String?>? scope;
  /// Service account email used to generate the [OAuth
  /// token](https://developers.google.com/identity/protocols/OAuth2).
  /// The principal who calls this API must have
  /// iam.serviceAccounts.actAs permission in the service account. See
  /// https://cloud.google.com/iam/docs/understanding-service-accounts
  /// for more information. Eventarc service agents must have
  /// roles/roles/iam.serviceAccountTokenCreator role to allow Pipeline
  /// to create OAuth2 tokens for authenticated requests.
  final pulumi.Input<String> serviceAccount;

  /// Creates a new [PipelineDestinationAuthenticationConfigOauthToken].
  /// [scope] OAuth scope to be used for generating OAuth access token. If not
  /// [serviceAccount] Service account email used to generate the [OAuth
  const PipelineDestinationAuthenticationConfigOauthToken({
    this.scope,
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope,
      'serviceAccount': serviceAccount,
    };
  }

  factory PipelineDestinationAuthenticationConfigOauthToken.fromMap(Map<String, dynamic> map) {
    return PipelineDestinationAuthenticationConfigOauthToken(
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
    );
  }
}
