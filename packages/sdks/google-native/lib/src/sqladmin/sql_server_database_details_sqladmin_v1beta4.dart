// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Sql Server database on the Cloud SQL instance.
class SqlServerDatabaseDetailsSqladminV1beta4 {
  /// The version of SQL Server with which the database is to be made compatible
  final pulumi.Input<int>? compatibilityLevel;

  /// The recovery model of a SQL Server database
  final pulumi.Input<String>? recoveryModel;

  /// Creates a new [SqlServerDatabaseDetailsSqladminV1beta4].
  /// [compatibilityLevel] The version of SQL Server with which the database is to be made compatible
  /// [recoveryModel] The recovery model of a SQL Server database
  SqlServerDatabaseDetailsSqladminV1beta4({
    this.compatibilityLevel,
    this.recoveryModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compatibilityLevel': ?compatibilityLevel,
      'recoveryModel': ?recoveryModel,
    };
  }

  factory SqlServerDatabaseDetailsSqladminV1beta4.fromMap(
    Map<String, dynamic> map,
  ) {
    return SqlServerDatabaseDetailsSqladminV1beta4(
      compatibilityLevel: (() {
        final guardedValue = map['compatibilityLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      recoveryModel: (() {
        final guardedValue = map['recoveryModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
