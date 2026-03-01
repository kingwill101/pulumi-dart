// ignore_for_file: unused_element, unnecessary_cast

import 'workforce_pool_provider_extra_attributes_oauth2_client_client_secret_value.dart';

class WorkforcePoolProviderExtraAttributesOauth2ClientClientSecret {
  /// The value of the client secret.
  /// Structure is documented below.
  final WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue? value;

  /// Creates a new [WorkforcePoolProviderExtraAttributesOauth2ClientClientSecret].
  /// [value] The value of the client secret.
  WorkforcePoolProviderExtraAttributesOauth2ClientClientSecret({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value == null ? null : value!.toMap(),
    };
  }

  factory WorkforcePoolProviderExtraAttributesOauth2ClientClientSecret.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderExtraAttributesOauth2ClientClientSecret(
      value: map['value'] == null ? null : WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue.fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}

