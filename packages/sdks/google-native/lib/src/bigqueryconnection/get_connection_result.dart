// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_sql_properties_response.dart';

/// Result data returned by getConnection.
class GetConnectionResult {
  /// Cloud SQL properties.
  final CloudSqlPropertiesResponse cloudSql;
  /// The creation timestamp of the connection.
  final String creationTime;
  /// User provided description.
  final String description;
  /// User provided display name for the connection.
  final String friendlyName;
  /// True, if credential is configured for this connection.
  final bool hasCredential;
  /// The last update timestamp of the connection.
  final String lastModifiedTime;
  /// The resource name of the connection in the form of: `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
  final String name;

  /// Creates a new [GetConnectionResult].
  /// [cloudSql] Cloud SQL properties.
  /// [creationTime] The creation timestamp of the connection.
  /// [description] User provided description.
  /// [friendlyName] User provided display name for the connection.
  /// [hasCredential] True, if credential is configured for this connection.
  /// [lastModifiedTime] The last update timestamp of the connection.
  /// [name] The resource name of the connection in the form of: `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
  GetConnectionResult({
    required this.cloudSql,
    required this.creationTime,
    required this.description,
    required this.friendlyName,
    required this.hasCredential,
    required this.lastModifiedTime,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSql': cloudSql.toMap(),
      'creationTime': creationTime,
      'description': description,
      'friendlyName': friendlyName,
      'hasCredential': hasCredential,
      'lastModifiedTime': lastModifiedTime,
      'name': name,
    };
  }

  factory GetConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionResult(
      cloudSql: CloudSqlPropertiesResponse.fromMap((map['cloudSql']! as Map).cast<String, dynamic>()),
      creationTime: map['creationTime'] as String,
      description: map['description'] as String,
      friendlyName: map['friendlyName'] as String,
      hasCredential: map['hasCredential'] as bool,
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
    );
  }
}

