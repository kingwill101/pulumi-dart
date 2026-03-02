// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedServiceAzureFunctionKeyVaultKey {
  /// Specifies the name of an existing Key Vault Data Factory Linked Service.
  final pulumi.Input<String> linkedServiceName;
  /// Specifies the secret name in Azure Key Vault that stores the system key of the Azure Function.
  final pulumi.Input<String> secretName;

  /// Creates a new [LinkedServiceAzureFunctionKeyVaultKey].
  /// [linkedServiceName] Specifies the name of an existing Key Vault Data Factory Linked Service.
  /// [secretName] Specifies the secret name in Azure Key Vault that stores the system key of the Azure Function.
  LinkedServiceAzureFunctionKeyVaultKey({
    required this.linkedServiceName,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'secretName': secretName,
    };
  }

  factory LinkedServiceAzureFunctionKeyVaultKey.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureFunctionKeyVaultKey(
      linkedServiceName: (map['linkedServiceName'] as String).input(),
      secretName: (map['secretName'] as String).input(),
    );
  }
}

