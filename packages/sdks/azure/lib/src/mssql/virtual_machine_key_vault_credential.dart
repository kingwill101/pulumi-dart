// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineKeyVaultCredential {
  /// The Azure Key Vault url. Changing this forces a new resource to be created.
  final pulumi.Input<String> keyVaultUrl;
  /// The credential name.
  final pulumi.Input<String> name;
  /// The service principal name to access key vault. Changing this forces a new resource to be created.
  final pulumi.Input<String> servicePrincipalName;
  /// The service principal name secret to access key vault. Changing this forces a new resource to be created.
  final pulumi.Input<String> servicePrincipalSecret;

  /// Creates a new [VirtualMachineKeyVaultCredential].
  /// [keyVaultUrl] The Azure Key Vault url. Changing this forces a new resource to be created.
  /// [name] The credential name.
  /// [servicePrincipalName] The service principal name to access key vault. Changing this forces a new resource to be created.
  /// [servicePrincipalSecret] The service principal name secret to access key vault. Changing this forces a new resource to be created.
  VirtualMachineKeyVaultCredential({
    required this.keyVaultUrl,
    required this.name,
    required this.servicePrincipalName,
    required this.servicePrincipalSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultUrl': keyVaultUrl,
      'name': name,
      'servicePrincipalName': servicePrincipalName,
      'servicePrincipalSecret': servicePrincipalSecret,
    };
  }

  factory VirtualMachineKeyVaultCredential.fromMap(Map<String, dynamic> map) {
    return VirtualMachineKeyVaultCredential(
      keyVaultUrl: (map['keyVaultUrl'] as String).input(),
      name: (map['name'] as String).input(),
      servicePrincipalName: (map['servicePrincipalName'] as String).input(),
      servicePrincipalSecret: (map['servicePrincipalSecret'] as String).input(),
    );
  }
}

