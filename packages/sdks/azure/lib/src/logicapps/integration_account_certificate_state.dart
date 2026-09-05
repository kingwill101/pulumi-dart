// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_certificate_key_vault_key.dart';

/// Input properties used for looking up and filtering IntegrationAccountCertificate resources.
class IntegrationAccountCertificateState {
  /// The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Certificate to be created.
  final pulumi.Input<String?>? integrationAccountName;
  /// A `keyVaultKey` block as documented below.
  final pulumi.Input<IntegrationAccountCertificateKeyVaultKey?>? keyVaultKey;
  /// A JSON mapping of any Metadata for this Logic App Integration Account Certificate.
  final pulumi.Input<String?>? metadata;
  /// The name which should be used for this Logic App Integration Account Certificate. Changing this forces a new Logic App Integration Account Certificate to be created.
  final pulumi.Input<String?>? name;
  /// The public certificate for the Logic App Integration Account Certificate.
  final pulumi.Input<String?>? publicCertificate;
  /// The name of the Resource Group where the Logic App Integration Account Certificate should exist. Changing this forces a new Logic App Integration Account Certificate to be created.
  final pulumi.Input<String?>? resourceGroupName;

  /// Creates a new [IntegrationAccountCertificateState].
  /// [integrationAccountName] The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Certificate to be created.
  /// [keyVaultKey] A `keyVaultKey` block as documented below.
  /// [metadata] A JSON mapping of any Metadata for this Logic App Integration Account Certificate.
  /// [name] The name which should be used for this Logic App Integration Account Certificate. Changing this forces a new Logic App Integration Account Certificate to be created.
  /// [publicCertificate] The public certificate for the Logic App Integration Account Certificate.
  /// [resourceGroupName] The name of the Resource Group where the Logic App Integration Account Certificate should exist. Changing this forces a new Logic App Integration Account Certificate to be created.
  const IntegrationAccountCertificateState({
    this.integrationAccountName,
    this.keyVaultKey,
    this.metadata,
    this.name,
    this.publicCertificate,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationAccountName': ?integrationAccountName,
      'keyVaultKey': ?pulumi.Input.mapOptionalInputValue<IntegrationAccountCertificateKeyVaultKey, Map<String, dynamic>>(keyVaultKey, (value) => value.toMap()),
      'metadata': ?metadata,
      'name': ?name,
      'publicCertificate': ?publicCertificate,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory IntegrationAccountCertificateState.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountCertificateState(
      integrationAccountName: (() { final guardedValue = map['integrationAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultKey: (() { final guardedValue = map['keyVaultKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationAccountCertificateKeyVaultKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicCertificate: (() { final guardedValue = map['publicCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
