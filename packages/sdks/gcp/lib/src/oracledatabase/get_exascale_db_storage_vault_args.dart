// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracledatabase_get_exascale_db_storage_vault_get_exascale_db_storage_vault_args_doc}
/// Arguments for getExascaleDbStorageVault.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_get_exascale_db_storage_vault_get_exascale_db_storage_vault_args_doc}
class GetExascaleDbStorageVaultArgs {
  /// The ID of the ExascaleDbStorageVault.
  final pulumi.Input<String> exascaleDbStorageVaultId;
  /// The location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetExascaleDbStorageVaultArgs].
  /// [exascaleDbStorageVaultId] The ID of the ExascaleDbStorageVault.
  /// [location] The location of the resource.
  /// [project] The project to which the resource belongs. If it
  const GetExascaleDbStorageVaultArgs({
    required this.exascaleDbStorageVaultId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exascaleDbStorageVaultId': exascaleDbStorageVaultId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetExascaleDbStorageVaultArgs.fromMap(Map<String, dynamic> map) {
    return GetExascaleDbStorageVaultArgs(
      exascaleDbStorageVaultId: pulumi.Input.fromValue(map['exascaleDbStorageVaultId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
