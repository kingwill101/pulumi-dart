// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_siterecovery_hyper_vsite_hyper_vsite_args_doc}
/// The set of arguments for HyperVSite.
/// {@endtemplate}
/// {@macro pulumi_siterecovery_hyper_vsite_hyper_vsite_args_doc}
class HyperVSiteArgs {
  /// The name which should be used for this Recovery Service. Changing this forces a new Site to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Recovery Services Vault where the Site created. Changing this forces a new Site to be created.
  final pulumi.Input<String> recoveryVaultId;

  /// Creates a new [HyperVSiteArgs].
  /// [name] The name which should be used for this Recovery Service. Changing this forces a new Site to be created.
  /// [recoveryVaultId] The ID of the Recovery Services Vault where the Site created. Changing this forces a new Site to be created.
  const HyperVSiteArgs({
    this.name,
    required this.recoveryVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'recoveryVaultId': recoveryVaultId,
    };
  }

  factory HyperVSiteArgs.fromMap(Map<String, dynamic> map) {
    return HyperVSiteArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryVaultId: pulumi.Input.fromValue(map['recoveryVaultId'] as String),
    );
  }
}
