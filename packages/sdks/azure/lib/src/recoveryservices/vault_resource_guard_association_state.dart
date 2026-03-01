// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VaultResourceGuardAssociation resources.
class VaultResourceGuardAssociationState {
  /// ID of the Resource Guard which should be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGuardId;
  /// ID of the Recovery Services Vault which should be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [VaultResourceGuardAssociationState].
  /// [resourceGuardId] ID of the Resource Guard which should be associated with. Changing this forces a new resource to be created.
  /// [vaultId] ID of the Recovery Services Vault which should be associated with. Changing this forces a new resource to be created.
  VaultResourceGuardAssociationState({
    pulumi.Output<String>? resourceGuardId,
    pulumi.Output<String>? vaultId,
  }) :
      resourceGuardId = pulumi.Input.asOptionalInput<String>(resourceGuardId),
      vaultId = pulumi.Input.asOptionalInput<String>(vaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGuardId': ?resourceGuardId,
      'vaultId': ?vaultId,
    };
  }

  factory VaultResourceGuardAssociationState.fromMap(Map<String, dynamic> map) {
    return VaultResourceGuardAssociationState(
      resourceGuardId: map['resourceGuardId'] == null ? null : pulumi.Output.create<String>(map['resourceGuardId'] as String),
      vaultId: map['vaultId'] == null ? null : pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

