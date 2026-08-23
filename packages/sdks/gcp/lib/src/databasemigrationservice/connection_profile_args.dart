// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_alloydb.dart';
import 'connection_profile_cloudsql.dart';
import 'connection_profile_mysql.dart';
import 'connection_profile_oracle.dart';
import 'connection_profile_postgresql.dart';

/// {@template pulumi_databasemigrationservice_connection_profile_connection_profile_args_doc}
/// The set of arguments for ConnectionProfile.
/// {@endtemplate}
/// {@macro pulumi_databasemigrationservice_connection_profile_connection_profile_args_doc}
class ConnectionProfileArgs {
  /// Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileAlloydb>? alloydb;
  /// Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileCloudsql>? cloudsql;
  /// The ID of the connection profile.
  final pulumi.Input<String> connectionProfileId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The connection profile display name.
  final pulumi.Input<String>? displayName;
  /// The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the connection profile should reside.
  final pulumi.Input<String>? location;
  /// Specifies connection parameters required specifically for MySQL databases.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileMysql>? mysql;
  /// Specifies connection parameters required specifically for Oracle databases.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileOracle>? oracle;
  /// Specifies connection parameters required specifically for PostgreSQL databases.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfilePostgresql>? postgresql;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The connection profile role.
  /// Possible values are: `SOURCE`, `DESTINATION`.
  final pulumi.Input<String>? role;

  /// Creates a new [ConnectionProfileArgs].
  /// [alloydb] Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster.
  /// [cloudsql] Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.
  /// [connectionProfileId] The ID of the connection profile.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The connection profile display name.
  /// [labels] The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs.
  /// [location] The location where the connection profile should reside.
  /// [mysql] Specifies connection parameters required specifically for MySQL databases.
  /// [oracle] Specifies connection parameters required specifically for Oracle databases.
  /// [postgresql] Specifies connection parameters required specifically for PostgreSQL databases.
  /// [project] The ID of the project in which the resource belongs.
  /// [role] The connection profile role.
  const ConnectionProfileArgs({
    this.alloydb,
    this.cloudsql,
    required this.connectionProfileId,
    this.deletionPolicy,
    this.displayName,
    this.labels,
    this.location,
    this.mysql,
    this.oracle,
    this.postgresql,
    this.project,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alloydb': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileAlloydb, Map<String, dynamic>>(alloydb, (value) => value.toMap()),
      'cloudsql': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileCloudsql, Map<String, dynamic>>(cloudsql, (value) => value.toMap()),
      'connectionProfileId': connectionProfileId,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': ?location,
      'mysql': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileMysql, Map<String, dynamic>>(mysql, (value) => value.toMap()),
      'oracle': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileOracle, Map<String, dynamic>>(oracle, (value) => value.toMap()),
      'postgresql': ?pulumi.Input.mapOptionalInputValue<ConnectionProfilePostgresql, Map<String, dynamic>>(postgresql, (value) => value.toMap()),
      'project': ?project,
      'role': ?role,
    };
  }

  factory ConnectionProfileArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileArgs(
      alloydb: (() { final guardedValue = map['alloydb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileAlloydb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudsql: (() { final guardedValue = map['cloudsql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileCloudsql.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionProfileId: pulumi.Input.fromValue(map['connectionProfileId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mysql: (() { final guardedValue = map['mysql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileMysql.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oracle: (() { final guardedValue = map['oracle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileOracle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      postgresql: (() { final guardedValue = map['postgresql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfilePostgresql.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
