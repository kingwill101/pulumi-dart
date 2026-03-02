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
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
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
  /// The current connection profile state.
  final pulumi.Input<String>? state;

  /// Creates a new [ConnectionProfileState].
  /// [alloydb] Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster.
  /// [cloudsql] Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.
  /// [connectionProfileId] The ID of the connection profile.
  /// [createTime] Output only. The timestamp when the resource was created. A timestamp in RFC3339 UTC 'Zulu' format, accurate to nanoseconds. Example: '2014-10-02T15:01:23.045123456Z'.
  /// [dbprovider] The database provider.
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
  /// [state] The current connection profile state.
  ConnectionProfileState({
    this.alloydb,
    this.cloudsql,
    this.connectionProfileId,
    this.createTime,
    this.dbprovider,
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
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alloydb': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileAlloydb, Map<String, dynamic>>(alloydb, (value) => value.toMap()),
      'cloudsql': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileCloudsql, Map<String, dynamic>>(cloudsql, (value) => value.toMap()),
      'connectionProfileId': ?connectionProfileId,
      'createTime': ?createTime,
      'dbprovider': ?dbprovider,
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
      'state': ?state,
    };
  }

  factory ConnectionProfileState.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileState(
      alloydb: map['alloydb'] == null ? null : (ConnectionProfileAlloydb.fromMap((map['alloydb']! as Map).cast<String, dynamic>())).input(),
      cloudsql: map['cloudsql'] == null ? null : (ConnectionProfileCloudsql.fromMap((map['cloudsql']! as Map).cast<String, dynamic>())).input(),
      connectionProfileId: map['connectionProfileId'] == null ? null : (map['connectionProfileId']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      dbprovider: map['dbprovider'] == null ? null : (map['dbprovider']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      errors: map['errors'] == null ? null : (pulumi.Input.decodeList<ConnectionProfileError>(map['errors']!, (value) => ConnectionProfileError.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      mysql: map['mysql'] == null ? null : (ConnectionProfileMysql.fromMap((map['mysql']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      oracle: map['oracle'] == null ? null : (ConnectionProfileOracle.fromMap((map['oracle']! as Map).cast<String, dynamic>())).input(),
      postgresql: map['postgresql'] == null ? null : (ConnectionProfilePostgresql.fromMap((map['postgresql']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

