// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_alloydb.dart';
import 'connection_profile_cloudsql.dart';
import 'connection_profile_error.dart';
import 'connection_profile_mysql.dart';
import 'connection_profile_oracle.dart';
import 'connection_profile_postgresql.dart';

/// Input properties used for looking up and filtering ConnectionProfile resources.
class ConnectionProfileState {
  /// Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileAlloydb>? alloydb;
  /// Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileCloudsql>? cloudsql;
  /// The ID of the connection profile.
  final pulumi.Input<String>? connectionProfileId;
  /// Output only. The timestamp when the resource was created. A timestamp in RFC3339 UTC 'Zulu' format, accurate to nanoseconds. Example: '2014-10-02T15:01:23.045123456Z'.
  final pulumi.Input<String>? createTime;
  /// The database provider.
  final pulumi.Input<String>? dbprovider;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The connection profile display name.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Output only. The error details in case of state FAILED.
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionProfileError>>? errors;
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
  /// The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  final pulumi.Input<String>? name;
  /// Specifies connection parameters required specifically for Oracle databases.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileOracle>? oracle;
  /// Specifies connection parameters required specifically for PostgreSQL databases.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfilePostgresql>? postgresql;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The connection profile role.
  /// Possible values are: `SOURCE`, `DESTINATION`.
  final pulumi.Input<String>? role;
  /// The current connection profile state.
  final pulumi.Input<String>? state;

  /// Creates a new [ConnectionProfileState].
  /// [alloydb] Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster.
  /// [cloudsql] Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.
  /// [connectionProfileId] The ID of the connection profile.
  /// [createTime] Output only. The timestamp when the resource was created. A timestamp in RFC3339 UTC 'Zulu' format, accurate to nanoseconds. Example: '2014-10-02T15:01:23.045123456Z'.
  /// [dbprovider] The database provider.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The connection profile display name.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [errors] Output only. The error details in case of state FAILED.
  /// [labels] The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs.
  /// [location] The location where the connection profile should reside.
  /// [mysql] Specifies connection parameters required specifically for MySQL databases.
  /// [name] The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  /// [oracle] Specifies connection parameters required specifically for Oracle databases.
  /// [postgresql] Specifies connection parameters required specifically for PostgreSQL databases.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [role] The connection profile role.
  /// [state] The current connection profile state.
  const ConnectionProfileState({
    this.alloydb,
    this.cloudsql,
    this.connectionProfileId,
    this.createTime,
    this.dbprovider,
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.errors,
    this.labels,
    this.location,
    this.mysql,
    this.name,
    this.oracle,
    this.postgresql,
    this.project,
    this.pulumiLabels,
    this.role,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alloydb': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileAlloydb, Map<String, dynamic>>(alloydb, (value) => value.toMap()),
      'cloudsql': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileCloudsql, Map<String, dynamic>>(cloudsql, (value) => value.toMap()),
      'connectionProfileId': ?connectionProfileId,
      'createTime': ?createTime,
      'dbprovider': ?dbprovider,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<ConnectionProfileError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ConnectionProfileError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'mysql': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileMysql, Map<String, dynamic>>(mysql, (value) => value.toMap()),
      'name': ?name,
      'oracle': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileOracle, Map<String, dynamic>>(oracle, (value) => value.toMap()),
      'postgresql': ?pulumi.Input.mapOptionalInputValue<ConnectionProfilePostgresql, Map<String, dynamic>>(postgresql, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'role': ?role,
      'state': ?state,
    };
  }

  factory ConnectionProfileState.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileState(
      alloydb: (() { final guardedValue = map['alloydb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileAlloydb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudsql: (() { final guardedValue = map['cloudsql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileCloudsql.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionProfileId: (() { final guardedValue = map['connectionProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbprovider: (() { final guardedValue = map['dbprovider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionProfileError>(guardedValue, (value) => ConnectionProfileError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mysql: (() { final guardedValue = map['mysql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileMysql.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oracle: (() { final guardedValue = map['oracle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileOracle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      postgresql: (() { final guardedValue = map['postgresql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfilePostgresql.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
