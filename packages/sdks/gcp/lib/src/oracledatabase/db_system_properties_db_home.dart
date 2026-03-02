// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_system_properties_db_home_database.dart';

class DbSystemPropertiesDbHome {
  /// Details of the Database resource.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/Database/
  /// Structure is documented below.
  final pulumi.Input<DbSystemPropertiesDbHomeDatabase> database;
  /// A valid Oracle Database version. For a list of supported versions, use the
  /// ListDbVersions operation.
  final pulumi.Input<String> dbVersion;
  /// The display name for the Database Home. The name does not have to
  /// be unique within your project.
  final pulumi.Input<String>? displayName;
  /// Whether unified auditing is enabled for the Database Home.
  final pulumi.Input<bool>? isUnifiedAuditingEnabled;

  /// Creates a new [DbSystemPropertiesDbHome].
  /// [database] Details of the Database resource.
  /// [dbVersion] A valid Oracle Database version. For a list of supported versions, use the
  /// [displayName] The display name for the Database Home. The name does not have to
  /// [isUnifiedAuditingEnabled] Whether unified auditing is enabled for the Database Home.
  DbSystemPropertiesDbHome({
    required this.database,
    required this.dbVersion,
    this.displayName,
    this.isUnifiedAuditingEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': pulumi.Input.mapInputValue<DbSystemPropertiesDbHomeDatabase, Map<String, dynamic>>(database, (value) => value.toMap()),
      'dbVersion': dbVersion,
      'displayName': ?displayName,
      'isUnifiedAuditingEnabled': ?isUnifiedAuditingEnabled,
    };
  }

  factory DbSystemPropertiesDbHome.fromMap(Map<String, dynamic> map) {
    return DbSystemPropertiesDbHome(
      database: (DbSystemPropertiesDbHomeDatabase.fromMap((map['database'] as Map).cast<String, dynamic>())).input(),
      dbVersion: (map['dbVersion'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      isUnifiedAuditingEnabled: map['isUnifiedAuditingEnabled'] == null ? null : (map['isUnifiedAuditingEnabled']! as bool).input(),
    );
  }
}

