// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineKeyVaultCredential {
  /// The Azure Key Vault url. Changing this forces a new resource to be created.
  final String keyVaultUrl;
  /// The credential name.
  final String name;
  /// The service principal name to access key vault. Changing this forces a new resource to be created.
  final String servicePrincipalName;
  /// The service principal name secret to access key vault. Changing this forces a new resource to be created.
  final String servicePrincipalSecret;

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
      keyVaultUrl: map['keyVaultUrl'] as String,
      name: map['name'] as String,
      servicePrincipalName: map['servicePrincipalName'] as String,
      servicePrincipalSecret: map['servicePrincipalSecret'] as String,
    );
  }
}

