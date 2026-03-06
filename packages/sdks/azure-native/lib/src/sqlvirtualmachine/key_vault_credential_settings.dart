// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configure your SQL virtual machine to be able to connect to the Azure Key Vault service.
class KeyVaultCredentialSettings {
  /// Azure Key Vault url.
  final pulumi.Input<String>? azureKeyVaultUrl;
  /// Credential name.
  final pulumi.Input<String>? credentialName;
  /// Enable or disable key vault credential setting.
  final pulumi.Input<bool>? enable;
  /// Service principal name to access key vault.
  final pulumi.Input<String>? servicePrincipalName;
  /// Service principal name secret to access key vault.
  final pulumi.Input<String>? servicePrincipalSecret;

  /// Creates a new [KeyVaultCredentialSettings].
  /// [azureKeyVaultUrl] Azure Key Vault url.
  /// [credentialName] Credential name.
  /// [enable] Enable or disable key vault credential setting.
  /// [servicePrincipalName] Service principal name to access key vault.
  /// [servicePrincipalSecret] Service principal name secret to access key vault.
  const KeyVaultCredentialSettings({
    this.azureKeyVaultUrl,
    this.credentialName,
    this.enable,
    this.servicePrincipalName,
    this.servicePrincipalSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureKeyVaultUrl': ?azureKeyVaultUrl,
      'credentialName': ?credentialName,
      'enable': ?enable,
      'servicePrincipalName': ?servicePrincipalName,
      'servicePrincipalSecret': ?servicePrincipalSecret,
    };
  }

  factory KeyVaultCredentialSettings.fromMap(Map<String, dynamic> map) {
    return KeyVaultCredentialSettings(
      azureKeyVaultUrl: (() { final guardedValue = map['azureKeyVaultUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialName: (() { final guardedValue = map['credentialName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      servicePrincipalName: (() { final guardedValue = map['servicePrincipalName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipalSecret: (() { final guardedValue = map['servicePrincipalSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

