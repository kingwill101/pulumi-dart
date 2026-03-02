// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxWebhookGenericWebServiceServiceAccountAuthConfig {
  /// The email address of the service account used to authenticate the webhook call.
  /// Dialogflow uses this service account to exchange an access token and the access
  /// token is then sent in the **Authorization** header of the webhook request.
  /// The service account must have the **roles/iam.serviceAccountTokenCreator** role
  /// granted to the
  /// [Dialogflow service agent](https://cloud.google.com/iam/docs/service-agents?_gl=1*1jsujvh*_ga*NjYxMzU3OTg2LjE3Njc3MzQ4NjM.*_ga_WH2QY8WWF5*czE3Njc3MzQ2MjgkbzIkZzEkdDE3Njc3MzQ3NzQkajYwJGwwJGgw#dialogflow-service-agent).
  final pulumi.Input<String> serviceAccount;

  /// Creates a new [CxWebhookGenericWebServiceServiceAccountAuthConfig].
  /// [serviceAccount] The email address of the service account used to authenticate the webhook call.
  CxWebhookGenericWebServiceServiceAccountAuthConfig({
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccount': serviceAccount,
    };
  }

  factory CxWebhookGenericWebServiceServiceAccountAuthConfig.fromMap(Map<String, dynamic> map) {
    return CxWebhookGenericWebServiceServiceAccountAuthConfig(
      serviceAccount: (map['serviceAccount'] as String).input(),
    );
  }
}

