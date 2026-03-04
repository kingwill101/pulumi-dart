// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// New recovery services vault.
class NewRecoveryServicesVaultResponse {
  /// The name of the recovery services vault has to be created.
  final pulumi.Input<String> name;

  /// The name of the resource group where the recovery services vault has to be created.
  final pulumi.Input<String> resourceGroup;

  /// The vault type, whether it is existing or has to be created.
  /// Expected value is 'New'.
  final pulumi.Input<String> vaultType;

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
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
      vaultType: pulumi.Input.fromValue(map['vaultType'] as String),
    );
  }
}
