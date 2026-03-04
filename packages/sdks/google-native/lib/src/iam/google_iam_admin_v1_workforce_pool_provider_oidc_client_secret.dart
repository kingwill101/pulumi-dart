// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_iam_admin_v1_workforce_pool_provider_oidc_client_secret_value.dart';

/// Representation of a client secret configured for the OIDC provider.
class GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret {
  /// The value of the client secret.
  final pulumi.Input<
    GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue
  >?
  value;

  /// Creates a new [GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret].
  /// [value] The value of the client secret.
  GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue,
            Map<String, dynamic>
          >(value, (value) => value.toMap()),
    };
  }

  factory GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
