// ignore_for_file: unused_element, unnecessary_cast


class IntegrationRuntimeSsisExpressCustomSetupCommandKeyKeyVaultPassword {
  final String linkedServiceName;
  /// A map of parameters to associate with the Key Vault Data Factory Linked Service.
  final Map<String, String>? parameters;
  /// Specifies the secret name in Azure Key Vault.
  final String secretName;
  /// Specifies the secret version in Azure Key Vault.
  final String? secretVersion;

  /// Creates a new [IntegrationRuntimeSsisExpressCustomSetupCommandKeyKeyVaultPassword].
  /// [linkedServiceName] Required.
  /// [parameters] A map of parameters to associate with the Key Vault Data Factory Linked Service.
  /// [secretName] Specifies the secret name in Azure Key Vault.
  /// [secretVersion] Specifies the secret version in Azure Key Vault.
  IntegrationRuntimeSsisExpressCustomSetupCommandKeyKeyVaultPassword({
    required this.linkedServiceName,
    this.parameters,
    required this.secretName,
    this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'parameters': ?parameters,
      'secretName': secretName,
      'secretVersion': ?secretVersion,
    };
  }

  factory IntegrationRuntimeSsisExpressCustomSetupCommandKeyKeyVaultPassword.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisExpressCustomSetupCommandKeyKeyVaultPassword(
      linkedServiceName: map['linkedServiceName'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      secretName: map['secretName'] as String,
      secretVersion: map['secretVersion'] == null ? null : map['secretVersion'] as String,
    );
  }
}

