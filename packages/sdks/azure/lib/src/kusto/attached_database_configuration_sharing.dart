// ignore_for_file: unused_element, unnecessary_cast


class AttachedDatabaseConfigurationSharing {
  /// List of external tables exclude from the follower database.
  final List<String>? externalTablesToExcludes;
  /// List of external tables to include in the follower database.
  final List<String>? externalTablesToIncludes;
  /// List of materialized views exclude from the follower database.
  final List<String>? materializedViewsToExcludes;
  /// List of materialized views to include in the follower database.
  final List<String>? materializedViewsToIncludes;
  /// List of tables to exclude from the follower database.
  final List<String>? tablesToExcludes;
  /// List of tables to include in the follower database.
  final List<String>? tablesToIncludes;

  /// Creates a new [AttachedDatabaseConfigurationSharing].
  /// [externalTablesToExcludes] List of external tables exclude from the follower database.
  /// [externalTablesToIncludes] List of external tables to include in the follower database.
  /// [materializedViewsToExcludes] List of materialized views exclude from the follower database.
  /// [materializedViewsToIncludes] List of materialized views to include in the follower database.
  /// [tablesToExcludes] List of tables to exclude from the follower database.
  /// [tablesToIncludes] List of tables to include in the follower database.
  AttachedDatabaseConfigurationSharing({
    this.externalTablesToExcludes,
    this.externalTablesToIncludes,
    this.materializedViewsToExcludes,
    this.materializedViewsToIncludes,
    this.tablesToExcludes,
    this.tablesToIncludes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalTablesToExcludes': ?externalTablesToExcludes,
      'externalTablesToIncludes': ?externalTablesToIncludes,
      'materializedViewsToExcludes': ?materializedViewsToExcludes,
      'materializedViewsToIncludes': ?materializedViewsToIncludes,
      'tablesToExcludes': ?tablesToExcludes,
      'tablesToIncludes': ?tablesToIncludes,
    };
  }

  factory AttachedDatabaseConfigurationSharing.fromMap(Map<String, dynamic> map) {
    return AttachedDatabaseConfigurationSharing(
      externalTablesToExcludes: map['externalTablesToExcludes'] == null ? null : (map['externalTablesToExcludes'] as List).cast<String>(),
      externalTablesToIncludes: map['externalTablesToIncludes'] == null ? null : (map['externalTablesToIncludes'] as List).cast<String>(),
      materializedViewsToExcludes: map['materializedViewsToExcludes'] == null ? null : (map['materializedViewsToExcludes'] as List).cast<String>(),
      materializedViewsToIncludes: map['materializedViewsToIncludes'] == null ? null : (map['materializedViewsToIncludes'] as List).cast<String>(),
      tablesToExcludes: map['tablesToExcludes'] == null ? null : (map['tablesToExcludes'] as List).cast<String>(),
      tablesToIncludes: map['tablesToIncludes'] == null ? null : (map['tablesToIncludes'] as List).cast<String>(),
    );
  }
}

