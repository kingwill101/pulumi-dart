// ignore_for_file: unused_element, unnecessary_cast


/// Tables that will be included and excluded in the follower database
class TableLevelSharingProperties {
  /// List of external tables exclude from the follower database
  final List<String>? externalTablesToExclude;
  /// List of external tables to include in the follower database
  final List<String>? externalTablesToInclude;
  /// List of materialized views exclude from the follower database
  final List<String>? materializedViewsToExclude;
  /// List of materialized views to include in the follower database
  final List<String>? materializedViewsToInclude;
  /// List of tables to exclude from the follower database
  final List<String>? tablesToExclude;
  /// List of tables to include in the follower database
  final List<String>? tablesToInclude;

  /// Creates a new [TableLevelSharingProperties].
  /// [externalTablesToExclude] List of external tables exclude from the follower database
  /// [externalTablesToInclude] List of external tables to include in the follower database
  /// [materializedViewsToExclude] List of materialized views exclude from the follower database
  /// [materializedViewsToInclude] List of materialized views to include in the follower database
  /// [tablesToExclude] List of tables to exclude from the follower database
  /// [tablesToInclude] List of tables to include in the follower database
  TableLevelSharingProperties({
    this.externalTablesToExclude,
    this.externalTablesToInclude,
    this.materializedViewsToExclude,
    this.materializedViewsToInclude,
    this.tablesToExclude,
    this.tablesToInclude,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalTablesToExclude': ?externalTablesToExclude,
      'externalTablesToInclude': ?externalTablesToInclude,
      'materializedViewsToExclude': ?materializedViewsToExclude,
      'materializedViewsToInclude': ?materializedViewsToInclude,
      'tablesToExclude': ?tablesToExclude,
      'tablesToInclude': ?tablesToInclude,
    };
  }

  factory TableLevelSharingProperties.fromMap(Map<String, dynamic> map) {
    return TableLevelSharingProperties(
      externalTablesToExclude: map['externalTablesToExclude'] == null ? null : (map['externalTablesToExclude'] as List).cast<String>(),
      externalTablesToInclude: map['externalTablesToInclude'] == null ? null : (map['externalTablesToInclude'] as List).cast<String>(),
      materializedViewsToExclude: map['materializedViewsToExclude'] == null ? null : (map['materializedViewsToExclude'] as List).cast<String>(),
      materializedViewsToInclude: map['materializedViewsToInclude'] == null ? null : (map['materializedViewsToInclude'] as List).cast<String>(),
      tablesToExclude: map['tablesToExclude'] == null ? null : (map['tablesToExclude'] as List).cast<String>(),
      tablesToInclude: map['tablesToInclude'] == null ? null : (map['tablesToInclude'] as List).cast<String>(),
    );
  }
}

