// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Tables that will be included and excluded in the follower database
class TableLevelSharingPropertiesResponse {
  /// List of external tables exclude from the follower database
  final pulumi.Input<List<String>>? externalTablesToExclude;
  /// List of external tables to include in the follower database
  final pulumi.Input<List<String>>? externalTablesToInclude;
  /// List of materialized views exclude from the follower database
  final pulumi.Input<List<String>>? materializedViewsToExclude;
  /// List of materialized views to include in the follower database
  final pulumi.Input<List<String>>? materializedViewsToInclude;
  /// List of tables to exclude from the follower database
  final pulumi.Input<List<String>>? tablesToExclude;
  /// List of tables to include in the follower database
  final pulumi.Input<List<String>>? tablesToInclude;

  /// Creates a new [TableLevelSharingPropertiesResponse].
  /// [externalTablesToExclude] List of external tables exclude from the follower database
  /// [externalTablesToInclude] List of external tables to include in the follower database
  /// [materializedViewsToExclude] List of materialized views exclude from the follower database
  /// [materializedViewsToInclude] List of materialized views to include in the follower database
  /// [tablesToExclude] List of tables to exclude from the follower database
  /// [tablesToInclude] List of tables to include in the follower database
  const TableLevelSharingPropertiesResponse({
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

  factory TableLevelSharingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TableLevelSharingPropertiesResponse(
      externalTablesToExclude: (() { final guardedValue = map['externalTablesToExclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      externalTablesToInclude: (() { final guardedValue = map['externalTablesToInclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      materializedViewsToExclude: (() { final guardedValue = map['materializedViewsToExclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      materializedViewsToInclude: (() { final guardedValue = map['materializedViewsToInclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tablesToExclude: (() { final guardedValue = map['tablesToExclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tablesToInclude: (() { final guardedValue = map['tablesToInclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

