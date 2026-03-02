// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Sql Server database on the Cloud SQL instance.
class SqlServerDatabaseDetailsResponseSqladminV1beta4 {
  /// The version of SQL Server with which the database is to be made compatible
  final pulumi.Input<int> compatibilityLevel;
  /// The recovery model of a SQL Server database
  final pulumi.Input<String> recoveryModel;

  /// Creates a new [SqlServerDatabaseDetailsResponseSqladminV1beta4].
  /// [compatibilityLevel] The version of SQL Server with which the database is to be made compatible
  /// [recoveryModel] The recovery model of a SQL Server database
  SqlServerDatabaseDetailsResponseSqladminV1beta4({
    required this.compatibilityLevel,
    required this.recoveryModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compatibilityLevel': compatibilityLevel,
      'recoveryModel': recoveryModel,
    };
  }

  factory SqlServerDatabaseDetailsResponseSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return SqlServerDatabaseDetailsResponseSqladminV1beta4(
      compatibilityLevel: (map['compatibilityLevel'] as int).input(),
      recoveryModel: (map['recoveryModel'] as String).input(),
    );
  }
}

