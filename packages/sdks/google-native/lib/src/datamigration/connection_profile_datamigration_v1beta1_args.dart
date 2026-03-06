// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_sql_connection_profile_datamigration_v1beta1.dart';
import 'connection_profile_provider_datamigration_v1beta1.dart';
import 'connection_profile_state_datamigration_v1beta1.dart';
import 'my_sql_connection_profile_datamigration_v1beta1.dart';

/// {@template pulumi_datamigration_v1beta1_connection_profile_datamigration_v1beta1_args_doc}
/// The set of arguments for ConnectionProfile.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1beta1_connection_profile_datamigration_v1beta1_args_doc}
class ConnectionProfileDatamigrationV1beta1Args {
  /// A CloudSQL database connection profile.
  final pulumi.Input<CloudSqlConnectionProfileDatamigrationV1beta1>? cloudsql;
  /// Required. The connection profile identifier.
  final pulumi.Input<String> connectionProfileId;
  /// The connection profile display name.
  final pulumi.Input<String>? displayName;
  /// The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// A MySQL database connection profile.
  final pulumi.Input<MySqlConnectionProfileDatamigrationV1beta1>? mysql;
  /// The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The database provider.
  final pulumi.Input<ConnectionProfileProviderDatamigrationV1beta1>? provider;
  /// A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;
  /// The current connection profile state (e.g. DRAFT, READY, or FAILED).
  final pulumi.Input<ConnectionProfileStateDatamigrationV1beta1>? state;

  /// Creates a new [ConnectionProfileDatamigrationV1beta1Args].
  /// [cloudsql] A CloudSQL database connection profile.
  /// [connectionProfileId] Required. The connection profile identifier.
  /// [displayName] The connection profile display name.
  /// [labels] The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  /// [location] Optional.
  /// [mysql] A MySQL database connection profile.
  /// [name] The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  /// [project] Optional.
  /// [provider] The database provider.
  /// [requestId] A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  /// [state] The current connection profile state (e.g. DRAFT, READY, or FAILED).
  const ConnectionProfileDatamigrationV1beta1Args({
    this.cloudsql,
    required this.connectionProfileId,
    this.displayName,
    this.labels,
    this.location,
    this.mysql,
    this.name,
    this.project,
    this.provider,
    this.requestId,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudsql': ?pulumi.Input.mapOptionalInputValue<CloudSqlConnectionProfileDatamigrationV1beta1, Map<String, dynamic>>(cloudsql, (value) => value.toMap()),
      'connectionProfileId': connectionProfileId,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': ?location,
      'mysql': ?pulumi.Input.mapOptionalInputValue<MySqlConnectionProfileDatamigrationV1beta1, Map<String, dynamic>>(mysql, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'provider': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileProviderDatamigrationV1beta1, String>(provider, (value) => value.wireValue),
      'requestId': ?requestId,
      'state': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileStateDatamigrationV1beta1, String>(state, (value) => value.wireValue),
    };
  }

  factory ConnectionProfileDatamigrationV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileDatamigrationV1beta1Args(
      cloudsql: (() { final guardedValue = map['cloudsql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudSqlConnectionProfileDatamigrationV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionProfileId: pulumi.Input.fromValue(map['connectionProfileId'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mysql: (() { final guardedValue = map['mysql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MySqlConnectionProfileDatamigrationV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileProviderDatamigrationV1beta1.fromValue(guardedValue as String)); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileStateDatamigrationV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}

