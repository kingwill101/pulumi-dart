// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_certificate_key_vault_key.dart';

/// Input properties used for looking up and filtering IntegrationAccountCertificate resources.
class IntegrationAccountCertificateState {
  /// The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Certificate to be created.
  final pulumi.Input<String>? integrationAccountName;
  /// A `key_vault_key` block as documented below.
  final pulumi.Input<IntegrationAccountCertificateKeyVaultKey>? keyVaultKey;
  /// A JSON mapping of any Metadata for this Logic App Integration Account Certificate.
  final pulumi.Input<String>? metadata;
  /// The name which should be used for this Logic App Integration Account Certificate. Changing this forces a new Logic App Integration Account Certificate to be created.
  final pulumi.Input<String>? name;
  /// The public certificate for the Logic App Integration Account Certificate.
  final pulumi.Input<String>? publicCertificate;
  /// The name of the Resource Group where the Logic App Integration Account Certificate should exist. Changing this forces a new Logic App Integration Account Certificate to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [IntegrationAccountCertificateState].
  /// [integrationAccountName] The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Certificate to be created.
  /// [keyVaultKey] A `key_vault_key` block as documented below.
  /// [metadata] A JSON mapping of any Metadata for this Logic App Integration Account Certificate.
  /// [name] The name which should be used for this Logic App Integration Account Certificate. Changing this forces a new Logic App Integration Account Certificate to be created.
  /// [publicCertificate] The public certificate for the Logic App Integration Account Certificate.
  /// [resourceGroupName] The name of the Resource Group where the Logic App Integration Account Certificate should exist. Changing this forces a new Logic App Integration Account Certificate to be created.
  IntegrationAccountCertificateState({
    pulumi.Output<String>? integrationAccountName,
    pulumi.Output<IntegrationAccountCertificateKeyVaultKey>? keyVaultKey,
    pulumi.Output<String>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? publicCertificate,
    pulumi.Output<String>? resourceGroupName,
  }) :
      integrationAccountName = pulumi.Input.asOptionalInput<String>(integrationAccountName),
      keyVaultKey = pulumi.Input.asOptionalInput<IntegrationAccountCertificateKeyVaultKey>(keyVaultKey),
      metadata = pulumi.Input.asOptionalInput<String>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicCertificate = pulumi.Input.asOptionalInput<String>(publicCertificate),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

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
      integrationAccountName: map['integrationAccountName'] == null ? null : pulumi.Output.create<String>(map['integrationAccountName'] as String),
      keyVaultKey: map['keyVaultKey'] == null ? null : pulumi.Output.create<IntegrationAccountCertificateKeyVaultKey>(IntegrationAccountCertificateKeyVaultKey.fromMap((map['keyVaultKey'] as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<String>(map['metadata'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicCertificate: map['publicCertificate'] == null ? null : pulumi.Output.create<String>(map['publicCertificate'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

