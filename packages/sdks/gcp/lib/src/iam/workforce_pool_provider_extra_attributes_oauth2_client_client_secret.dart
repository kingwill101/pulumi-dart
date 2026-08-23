// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_pool_provider_extra_attributes_oauth2_client_client_secret_value.dart';

class WorkforcePoolProviderExtraAttributesOauth2ClientClientSecret {
  /// The value of the client secret.
  /// Structure is documented below.
  final pulumi.Input<WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue>? value;

  /// Creates a new [WorkforcePoolProviderExtraAttributesOauth2ClientClientSecret].
  /// [value] The value of the client secret.
  const WorkforcePoolProviderExtraAttributesOauth2ClientClientSecret({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?pulumi.Input.mapOptionalInputValue<WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory WorkforcePoolProviderExtraAttributesOauth2ClientClientSecret.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderExtraAttributesOauth2ClientClientSecret(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
