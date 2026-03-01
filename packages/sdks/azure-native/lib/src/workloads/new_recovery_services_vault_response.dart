// ignore_for_file: unused_element, unnecessary_cast


/// New recovery services vault.
class NewRecoveryServicesVaultResponse {
  /// The name of the recovery services vault has to be created.
  final String name;
  /// The name of the resource group where the recovery services vault has to be created.
  final String resourceGroup;
  /// The vault type, whether it is existing or has to be created.
  /// Expected value is 'New'.
  final String vaultType;

  /// Creates a new [NewRecoveryServicesVaultResponse].
  /// [name] The name of the recovery services vault has to be created.
  /// [resourceGroup] The name of the resource group where the recovery services vault has to be created.
  /// [vaultType] The vault type, whether it is existing or has to be created.
  NewRecoveryServicesVaultResponse({
    required this.name,
    required this.resourceGroup,
    required this.vaultType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroup': resourceGroup,
      'vaultType': vaultType,
    };
  }

  factory NewRecoveryServicesVaultResponse.fromMap(Map<String, dynamic> map) {
    return NewRecoveryServicesVaultResponse(
      name: map['name'] as String,
      resourceGroup: map['resourceGroup'] as String,
      vaultType: map['vaultType'] as String,
    );
  }
}

