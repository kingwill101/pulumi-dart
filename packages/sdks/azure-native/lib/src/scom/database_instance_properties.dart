// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of database instance
class DatabaseInstanceProperties {
  /// Resource Id of existing database instance
  final pulumi.Input<String>? databaseInstanceId;

  /// Creates a new [DatabaseInstanceProperties].
  /// [databaseInstanceId] Resource Id of existing database instance
  DatabaseInstanceProperties({
    this.databaseInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseInstanceId': ?databaseInstanceId,
    };
  }

  factory DatabaseInstanceProperties.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceProperties(
      databaseInstanceId: map['databaseInstanceId'] == null ? null : (map['databaseInstanceId']! as String).input(),
    );
  }
}

