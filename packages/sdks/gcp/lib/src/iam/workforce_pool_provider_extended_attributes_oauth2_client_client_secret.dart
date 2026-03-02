// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_pool_provider_extended_attributes_oauth2_client_client_secret_value.dart';

class WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecret {
  /// The value of the client secret.
  /// Structure is documented below.
  final pulumi.Input<WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue>? value;

  /// Creates a new [WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecret].
  /// [value] The value of the client secret.
  WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecret({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?pulumi.Input.mapOptionalInputValue<WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecret.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecret(
      value: map['value'] == null ? null : (WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue.fromMap((map['value'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

