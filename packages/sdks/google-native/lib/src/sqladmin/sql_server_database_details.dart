// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Sql Server database on the Cloud SQL instance.
class SqlServerDatabaseDetails {
  /// The version of SQL Server with which the database is to be made compatible
  final pulumi.Input<int>? compatibilityLevel;
  /// The recovery model of a SQL Server database
  final pulumi.Input<String>? recoveryModel;

  /// Creates a new [SqlServerDatabaseDetails].
  /// [compatibilityLevel] The version of SQL Server with which the database is to be made compatible
  /// [recoveryModel] The recovery model of a SQL Server database
  SqlServerDatabaseDetails({
    this.compatibilityLevel,
    this.recoveryModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compatibilityLevel': ?compatibilityLevel,
      'recoveryModel': ?recoveryModel,
    };
  }

  factory SqlServerDatabaseDetails.fromMap(Map<String, dynamic> map) {
    return SqlServerDatabaseDetails(
      compatibilityLevel: map['compatibilityLevel'] == null ? null : (map['compatibilityLevel'] as int).input(),
      recoveryModel: map['recoveryModel'] == null ? null : (map['recoveryModel'] as String).input(),
    );
  }
}

