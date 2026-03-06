// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_certificate_key_vault_key.dart';

/// {@template pulumi_logicapps_integration_account_certificate_integration_account_certificate_args_doc}
/// The set of arguments for IntegrationAccountCertificate.
/// {@endtemplate}
/// {@macro pulumi_logicapps_integration_account_certificate_integration_account_certificate_args_doc}
class IntegrationAccountCertificateArgs {
  /// The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Certificate to be created.
  final pulumi.Input<String> integrationAccountName;
  /// A `key_vault_key` block as documented below.
  final pulumi.Input<IntegrationAccountCertificateKeyVaultKey>? keyVaultKey;
  /// A JSON mapping of any Metadata for this Logic App Integration Account Certificate.
  final pulumi.Input<String>? metadata;
  /// The name which should be used for this Logic App Integration Account Certificate. Changing this forces a new Logic App Integration Account Certificate to be created.
  final pulumi.Input<String>? name;
  /// The public certificate for the Logic App Integration Account Certificate.
  final pulumi.Input<String>? publicCertificate;
  /// The name of the Resource Group where the Logic App Integration Account Certificate should exist. Changing this forces a new Logic App Integration Account Certificate to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [IntegrationAccountCertificateArgs].
  /// [integrationAccountName] The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Certificate to be created.
  /// [keyVaultKey] A `key_vault_key` block as documented below.
  /// [metadata] A JSON mapping of any Metadata for this Logic App Integration Account Certificate.
  /// [name] The name which should be used for this Logic App Integration Account Certificate. Changing this forces a new Logic App Integration Account Certificate to be created.
  /// [publicCertificate] The public certificate for the Logic App Integration Account Certificate.
  /// [resourceGroupName] The name of the Resource Group where the Logic App Integration Account Certificate should exist. Changing this forces a new Logic App Integration Account Certificate to be created.
  const IntegrationAccountCertificateArgs({
    required this.integrationAccountName,
    this.keyVaultKey,
    this.metadata,
    this.name,
    this.publicCertificate,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationAccountName': integrationAccountName,
      'keyVaultKey': ?pulumi.Input.mapOptionalInputValue<IntegrationAccountCertificateKeyVaultKey, Map<String, dynamic>>(keyVaultKey, (value) => value.toMap()),
      'metadata': ?metadata,
      'name': ?name,
      'publicCertificate': ?publicCertificate,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory IntegrationAccountCertificateArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountCertificateArgs(
      integrationAccountName: pulumi.Input.fromValue(map['integrationAccountName'] as String),
      keyVaultKey: (() { final guardedValue = map['keyVaultKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationAccountCertificateKeyVaultKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicCertificate: (() { final guardedValue = map['publicCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

