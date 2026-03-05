// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_pool_provider_oidc_client_secret_value.dart';

class WorkforcePoolProviderOidcClientSecret {
  /// The value of the client secret.
  /// Structure is documented below.
  final pulumi.Input<WorkforcePoolProviderOidcClientSecretValue>? value;

  /// Creates a new [WorkforcePoolProviderOidcClientSecret].
  /// [value] The value of the client secret.
  WorkforcePoolProviderOidcClientSecret({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?pulumi.Input.mapOptionalInputValue<WorkforcePoolProviderOidcClientSecretValue, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory WorkforcePoolProviderOidcClientSecret.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderOidcClientSecret(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforcePoolProviderOidcClientSecretValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

