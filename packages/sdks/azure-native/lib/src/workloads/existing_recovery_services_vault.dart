// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Existing recovery services vault.
class ExistingRecoveryServicesVault {
  /// The resource ID of the recovery services vault that has been created.
  final pulumi.Input<String> id;
  /// The vault type, whether it is existing or has to be created.
  /// Expected value is 'Existing'.
  final pulumi.Input<String> vaultType;

  /// Creates a new [ExistingRecoveryServicesVault].
  /// [id] The resource ID of the recovery services vault that has been created.
  /// [vaultType] The vault type, whether it is existing or has to be created.
  ExistingRecoveryServicesVault({
    required this.id,
    required this.vaultType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'vaultType': vaultType,
    };
  }

  factory ExistingRecoveryServicesVault.fromMap(Map<String, dynamic> map) {
    return ExistingRecoveryServicesVault(
      id: pulumi.Input.fromValue(map['id'] as String),
      vaultType: pulumi.Input.fromValue(map['vaultType'] as String),
    );
  }
}

