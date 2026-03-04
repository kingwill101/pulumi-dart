// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryCredentialSetIdentity {
  /// The principal ID of the Identity.
  final pulumi.Input<String>? principalId;

  /// The tenant ID of the Identity.
  final pulumi.Input<String>? tenantId;

  /// The type of Managed Service Identity that is configured on for the Container Registry Credential Set. Currently the only possible value is `SystemAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [RegistryCredentialSetIdentity].
  /// [principalId] The principal ID of the Identity.
  /// [tenantId] The tenant ID of the Identity.
  /// [type] The type of Managed Service Identity that is configured on for the Container Registry Credential Set. Currently the only possible value is `SystemAssigned`.
  RegistryCredentialSetIdentity({
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory RegistryCredentialSetIdentity.fromMap(Map<String, dynamic> map) {
    return RegistryCredentialSetIdentity(
      principalId: (() {
        final guardedValue = map['principalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
