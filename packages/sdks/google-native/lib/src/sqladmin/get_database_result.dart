// ignore_for_file: unused_element, unnecessary_cast

import 'sql_server_database_details_response.dart';

/// Result data returned by getDatabase.
class GetDatabaseResult {
  /// The Cloud SQL charset value.
  final String? charset;
  /// The Cloud SQL collation value.
  final String? collation;
  /// This field is deprecated and will be removed from a future version of the API.
  final String? etag;
  /// The name of the Cloud SQL instance. This does not include the project ID.
  final String? instance;
  /// This is always `sql#database`.
  final String? kind;
  /// The name of the database in the Cloud SQL instance. This does not include the project ID or instance name.
  final String? name;
  /// The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable.
  final String? project;
  /// The URI of this resource.
  final String? selfLink;
  final SqlServerDatabaseDetailsResponse? sqlserverDatabaseDetails;

  /// Creates a new [GetDatabaseResult].
  /// [charset] The Cloud SQL charset value.
  /// [collation] The Cloud SQL collation value.
  /// [etag] This field is deprecated and will be removed from a future version of the API.
  /// [instance] The name of the Cloud SQL instance. This does not include the project ID.
  /// [kind] This is always `sql#database`.
  /// [name] The name of the database in the Cloud SQL instance. This does not include the project ID or instance name.
  /// [project] The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable.
  /// [selfLink] The URI of this resource.
  /// [sqlserverDatabaseDetails] Optional.
  const GetDatabaseResult({
    this.charset,
    this.collation,
    this.etag,
    this.instance,
    this.kind,
    this.name,
    this.project,
    this.selfLink,
    this.sqlserverDatabaseDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'charset': ?charset,
      'collation': ?collation,
      'etag': ?etag,
      'instance': ?instance,
      'kind': ?kind,
      'name': ?name,
      'project': ?project,
      'selfLink': ?selfLink,
      'sqlserverDatabaseDetails': ?sqlserverDatabaseDetails?.toMap(),
    };
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      charset: (() { final guardedValue = map['charset']; if (guardedValue == null) return null; return guardedValue as String; })(),
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sqlserverDatabaseDetails: (() { final guardedValue = map['sqlserverDatabaseDetails']; if (guardedValue == null) return null; return SqlServerDatabaseDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
