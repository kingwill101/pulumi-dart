// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_sql_properties.dart';

/// {@template pulumi_bigqueryconnection_v1beta1_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_bigqueryconnection_v1beta1_connection_args_doc}
class ConnectionArgs {
  /// Cloud SQL properties.
  final pulumi.Input<CloudSqlProperties>? cloudSql;
  /// Optional. Connection id that should be assigned to the created connection.
  final pulumi.Input<String>? connectionId;
  /// User provided description.
  final pulumi.Input<String>? description;
  /// User provided display name for the connection.
  final pulumi.Input<String>? friendlyName;
  final pulumi.Input<String>? location;
  /// The resource name of the connection in the form of: `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [ConnectionArgs].
  /// [cloudSql] Cloud SQL properties.
  /// [connectionId] Optional. Connection id that should be assigned to the created connection.
  /// [description] User provided description.
  /// [friendlyName] User provided display name for the connection.
  /// [location] Optional.
  /// [name] The resource name of the connection in the form of: `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
  /// [project] Optional.
  ConnectionArgs({
    this.cloudSql,
    this.connectionId,
    this.description,
    this.friendlyName,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSql': ?pulumi.Input.mapOptionalInputValue<CloudSqlProperties, Map<String, dynamic>>(cloudSql, (value) => value.toMap()),
      'connectionId': ?connectionId,
      'description': ?description,
      'friendlyName': ?friendlyName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      cloudSql: map['cloudSql'] == null ? null : (CloudSqlProperties.fromMap((map['cloudSql']! as Map).cast<String, dynamic>())).input(),
      connectionId: map['connectionId'] == null ? null : (map['connectionId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

