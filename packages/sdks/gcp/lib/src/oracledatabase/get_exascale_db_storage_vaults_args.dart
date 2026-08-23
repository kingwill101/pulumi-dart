// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracledatabase_get_exascale_db_storage_vaults_get_exascale_db_storage_vaults_args_doc}
/// Arguments for getExascaleDbStorageVaults.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_get_exascale_db_storage_vaults_get_exascale_db_storage_vaults_args_doc}
class GetExascaleDbStorageVaultsArgs {
  /// The location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetExascaleDbStorageVaultsArgs].
  /// [location] The location of the resource.
  /// [project] The project to which the resource belongs. If it
  const GetExascaleDbStorageVaultsArgs({
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
    };
  }

  factory GetExascaleDbStorageVaultsArgs.fromMap(Map<String, dynamic> map) {
    return GetExascaleDbStorageVaultsArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
