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
    this.name,
    this.recoveryVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'recoveryVaultId': ?recoveryVaultId,
    };
  }

  factory HyperVSiteState.fromMap(Map<String, dynamic> map) {
    return HyperVSiteState(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      recoveryVaultId: map['recoveryVaultId'] == null ? null : (map['recoveryVaultId'] as String).input(),
    );
  }
}

