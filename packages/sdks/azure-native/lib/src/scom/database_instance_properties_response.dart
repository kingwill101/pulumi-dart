// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of database instance
class DatabaseInstancePropertiesResponse {
  /// Fully qualified domain name of existing database instance
  final pulumi.Input<String> databaseFqdn;
  /// Resource Id of existing database instance
  final pulumi.Input<String>? databaseInstanceId;
  /// Resource Id of warehouse database on database instance
  final pulumi.Input<String> dwDatabaseId;
  /// Name of warehouse database on database instance
  final pulumi.Input<String> dwDatabaseName;
  /// Resource Id of operational database on database instance
  final pulumi.Input<String> operationalDatabaseId;

  /// Creates a new [DatabaseInstancePropertiesResponse].
  /// [databaseFqdn] Fully qualified domain name of existing database instance
  /// [databaseInstanceId] Resource Id of existing database instance
  /// [dwDatabaseId] Resource Id of warehouse database on database instance
  /// [dwDatabaseName] Name of warehouse database on database instance
  /// [operationalDatabaseId] Resource Id of operational database on database instance
  DatabaseInstancePropertiesResponse({
    required this.databaseFqdn,
    this.databaseInstanceId,
    required this.dwDatabaseId,
    required this.dwDatabaseName,
    required this.operationalDatabaseId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseFqdn': databaseFqdn,
      'databaseInstanceId': ?databaseInstanceId,
      'dwDatabaseId': dwDatabaseId,
      'dwDatabaseName': dwDatabaseName,
      'operationalDatabaseId': operationalDatabaseId,
    };
  }

  factory DatabaseInstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseInstancePropertiesResponse(
      databaseFqdn: (map['databaseFqdn'] as String).input(),
      databaseInstanceId: map['databaseInstanceId'] == null ? null : (map['databaseInstanceId'] as String).input(),
      dwDatabaseId: (map['dwDatabaseId'] as String).input(),
      dwDatabaseName: (map['dwDatabaseName'] as String).input(),
      operationalDatabaseId: (map['operationalDatabaseId'] as String).input(),
    );
  }
}

