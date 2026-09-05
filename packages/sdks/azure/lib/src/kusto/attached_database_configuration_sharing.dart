// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AttachedDatabaseConfigurationSharing {
  /// List of external tables exclude from the follower database.
  final pulumi.Input<List<String>?>? externalTablesToExcludes;
  /// List of external tables to include in the follower database.
  final pulumi.Input<List<String>?>? externalTablesToIncludes;
  /// List of functions to exclude from the follower database.
  final pulumi.Input<List<String>?>? functionsToExcludes;
  /// List of functions to include in the follower database.
  final pulumi.Input<List<String>?>? functionsToIncludes;
  /// List of materialized views exclude from the follower database.
  final pulumi.Input<List<String>?>? materializedViewsToExcludes;
  /// List of materialized views to include in the follower database.
  final pulumi.Input<List<String>?>? materializedViewsToIncludes;
  /// List of tables to exclude from the follower database.
  final pulumi.Input<List<String>?>? tablesToExcludes;
  /// List of tables to include in the follower database.
  final pulumi.Input<List<String>?>? tablesToIncludes;

  /// Creates a new [AttachedDatabaseConfigurationSharing].
  /// [externalTablesToExcludes] List of external tables exclude from the follower database.
  /// [externalTablesToIncludes] List of external tables to include in the follower database.
  /// [functionsToExcludes] List of functions to exclude from the follower database.
  /// [functionsToIncludes] List of functions to include in the follower database.
  /// [materializedViewsToExcludes] List of materialized views exclude from the follower database.
  /// [materializedViewsToIncludes] List of materialized views to include in the follower database.
  /// [tablesToExcludes] List of tables to exclude from the follower database.
  /// [tablesToIncludes] List of tables to include in the follower database.
  const AttachedDatabaseConfigurationSharing({
    this.externalTablesToExcludes,
    this.externalTablesToIncludes,
    this.functionsToExcludes,
    this.functionsToIncludes,
    this.materializedViewsToExcludes,
    this.materializedViewsToIncludes,
    this.tablesToExcludes,
    this.tablesToIncludes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalTablesToExcludes': ?externalTablesToExcludes,
      'externalTablesToIncludes': ?externalTablesToIncludes,
      'functionsToExcludes': ?functionsToExcludes,
      'functionsToIncludes': ?functionsToIncludes,
      'materializedViewsToExcludes': ?materializedViewsToExcludes,
      'materializedViewsToIncludes': ?materializedViewsToIncludes,
      'tablesToExcludes': ?tablesToExcludes,
      'tablesToIncludes': ?tablesToIncludes,
    };
  }

  factory AttachedDatabaseConfigurationSharing.fromMap(Map<String, dynamic> map) {
    return AttachedDatabaseConfigurationSharing(
      externalTablesToExcludes: (() { final guardedValue = map['externalTablesToExcludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      externalTablesToIncludes: (() { final guardedValue = map['externalTablesToIncludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      functionsToExcludes: (() { final guardedValue = map['functionsToExcludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      functionsToIncludes: (() { final guardedValue = map['functionsToIncludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      materializedViewsToExcludes: (() { final guardedValue = map['materializedViewsToExcludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      materializedViewsToIncludes: (() { final guardedValue = map['materializedViewsToIncludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tablesToExcludes: (() { final guardedValue = map['tablesToExcludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tablesToIncludes: (() { final guardedValue = map['tablesToIncludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
