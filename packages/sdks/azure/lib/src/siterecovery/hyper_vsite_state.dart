// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HyperVSite resources.
class HyperVSiteState {
  /// The name which should be used for this Recovery Service. Changing this forces a new Site to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Recovery Services Vault where the Site created. Changing this forces a new Site to be created.
  final pulumi.Input<String>? recoveryVaultId;

  /// Creates a new [HyperVSiteState].
  /// [name] The name which should be used for this Recovery Service. Changing this forces a new Site to be created.
  /// [recoveryVaultId] The ID of the Recovery Services Vault where the Site created. Changing this forces a new Site to be created.
  HyperVSiteState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? recoveryVaultId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      recoveryVaultId = pulumi.Input.asOptionalInput<String>(recoveryVaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'recoveryVaultId': ?recoveryVaultId,
    };
  }

  factory HyperVSiteState.fromMap(Map<String, dynamic> map) {
    return HyperVSiteState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recoveryVaultId: map['recoveryVaultId'] == null ? null : pulumi.Output.create<String>(map['recoveryVaultId'] as String),
    );
  }
}

