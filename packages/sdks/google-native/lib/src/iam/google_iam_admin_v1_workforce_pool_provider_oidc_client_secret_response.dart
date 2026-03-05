// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_iam_admin_v1_workforce_pool_provider_oidc_client_secret_value_response.dart';

/// Representation of a client secret configured for the OIDC provider.
class GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretResponse {
  /// The value of the client secret.
  final pulumi.Input<GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValueResponse> value;

  /// Creates a new [GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretResponse].
  /// [value] The value of the client secret.
  GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretResponse({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': pulumi.Input.mapInputValue<GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValueResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretResponse.fromMap(Map<String, dynamic> map) {
    return GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretResponse(
      value: pulumi.Input.fromValue(GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValueResponse.fromMap((map['value']! as Map).cast<String, dynamic>())),
    );
  }
}

