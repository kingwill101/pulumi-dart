// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_get_database_system_versions_get_database_system_versions_args_doc}
/// Arguments for getDatabaseSystemVersions.
/// {@endtemplate}
/// {@macro pulumi_oracle_get_database_system_versions_get_database_system_versions_args_doc}
class GetDatabaseSystemVersionsArgs {
  /// Whether to filter the results to the set of Oracle Database versions that are supported for the database software images.
  final pulumi.Input<bool>? databaseSoftwareImageSupported;
  /// If provided, filters the results to the set of database versions which are supported for the given shape. The only possible value is `VM.Standard.x86`.
  final pulumi.Input<String>? databaseSystemShape;
  /// The Azure Region to query for the Oracle Database Systems Versions.
  final pulumi.Input<String> location;
  /// If provided, filters the results to the set of database versions which are supported for the given shape family. Possible values are `EXADATA`, `EXADB_XS`, `SINGLENODE` and `VIRTUALMACHINE`.
  final pulumi.Input<String>? shapeFamily;
  /// The database system storage management option. Used to list database versions available for that storage manager. The only possible value is `LVM`.
  final pulumi.Input<String>? storageManagement;
  /// Whether to filter the results to the set of database versions which are supported for upgrade.
  final pulumi.Input<bool>? upgradeSupported;

  /// Creates a new [GetDatabaseSystemVersionsArgs].
  /// [databaseSoftwareImageSupported] Whether to filter the results to the set of Oracle Database versions that are supported for the database software images.
  /// [databaseSystemShape] If provided, filters the results to the set of database versions which are supported for the given shape. The only possible value is `VM.Standard.x86`.
  /// [location] The Azure Region to query for the Oracle Database Systems Versions.
  /// [shapeFamily] If provided, filters the results to the set of database versions which are supported for the given shape family. Possible values are `EXADATA`, `EXADB_XS`, `SINGLENODE` and `VIRTUALMACHINE`.
  /// [storageManagement] The database system storage management option. Used to list database versions available for that storage manager. The only possible value is `LVM`.
  /// [upgradeSupported] Whether to filter the results to the set of database versions which are supported for upgrade.
  GetDatabaseSystemVersionsArgs({
    this.databaseSoftwareImageSupported,
    this.databaseSystemShape,
    required this.location,
    this.shapeFamily,
    this.storageManagement,
    this.upgradeSupported,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseSoftwareImageSupported': ?databaseSoftwareImageSupported,
      'databaseSystemShape': ?databaseSystemShape,
      'location': location,
      'shapeFamily': ?shapeFamily,
      'storageManagement': ?storageManagement,
      'upgradeSupported': ?upgradeSupported,
    };
  }

  factory GetDatabaseSystemVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseSystemVersionsArgs(
      databaseSoftwareImageSupported: map['databaseSoftwareImageSupported'] == null ? null : (map['databaseSoftwareImageSupported'] as bool).input(),
      databaseSystemShape: map['databaseSystemShape'] == null ? null : (map['databaseSystemShape'] as String).input(),
      location: (map['location'] as String).input(),
      shapeFamily: map['shapeFamily'] == null ? null : (map['shapeFamily'] as String).input(),
      storageManagement: map['storageManagement'] == null ? null : (map['storageManagement'] as String).input(),
      upgradeSupported: map['upgradeSupported'] == null ? null : (map['upgradeSupported'] as bool).input(),
    );
  }
}

