// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IntegrationRuntimeSsisExpressCustomSetupComponentKeyVaultLicense {
  final pulumi.Input<String> linkedServiceName;
  /// A map of parameters to associate with the Key Vault Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Specifies the secret name in Azure Key Vault.
  final pulumi.Input<String> secretName;
  /// Specifies the secret version in Azure Key Vault.
  final pulumi.Input<String>? secretVersion;

  /// Creates a new [IntegrationRuntimeSsisExpressCustomSetupComponentKeyVaultLicense].
  /// [linkedServiceName] Required.
  /// [parameters] A map of parameters to associate with the Key Vault Data Factory Linked Service.
  /// [secretName] Specifies the secret name in Azure Key Vault.
  /// [secretVersion] Specifies the secret version in Azure Key Vault.
  IntegrationRuntimeSsisExpressCustomSetupComponentKeyVaultLicense({
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

  factory IntegrationRuntimeSsisExpressCustomSetupComponentKeyVaultLicense.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisExpressCustomSetupComponentKeyVaultLicense(
      linkedServiceName: (map['linkedServiceName'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      secretName: (map['secretName'] as String).input(),
      secretVersion: map['secretVersion'] == null ? null : (map['secretVersion'] as String).input(),
    );
  }
}

