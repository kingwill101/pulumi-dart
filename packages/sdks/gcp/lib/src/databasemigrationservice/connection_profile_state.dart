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
    pulumi.Output<ConnectionProfileAlloydb>? alloydb,
    pulumi.Output<ConnectionProfileCloudsql>? cloudsql,
    pulumi.Output<String>? connectionProfileId,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dbprovider,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<List<ConnectionProfileError>>? errors,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<ConnectionProfileMysql>? mysql,
    pulumi.Output<String>? name,
    pulumi.Output<ConnectionProfileOracle>? oracle,
    pulumi.Output<ConnectionProfilePostgresql>? postgresql,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? state,
  }) :
      alloydb = pulumi.Input.asOptionalInput<ConnectionProfileAlloydb>(alloydb),
      cloudsql = pulumi.Input.asOptionalInput<ConnectionProfileCloudsql>(cloudsql),
      connectionProfileId = pulumi.Input.asOptionalInput<String>(connectionProfileId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dbprovider = pulumi.Input.asOptionalInput<String>(dbprovider),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      errors = pulumi.Input.asOptionalInput<List<ConnectionProfileError>>(errors),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      mysql = pulumi.Input.asOptionalInput<ConnectionProfileMysql>(mysql),
      name = pulumi.Input.asOptionalInput<String>(name),
      oracle = pulumi.Input.asOptionalInput<ConnectionProfileOracle>(oracle),
      postgresql = pulumi.Input.asOptionalInput<ConnectionProfilePostgresql>(postgresql),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      state = pulumi.Input.asOptionalInput<String>(state);

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
      alloydb: map['alloydb'] == null ? null : pulumi.Output.create<ConnectionProfileAlloydb>(ConnectionProfileAlloydb.fromMap((map['alloydb'] as Map).cast<String, dynamic>())),
      cloudsql: map['cloudsql'] == null ? null : pulumi.Output.create<ConnectionProfileCloudsql>(ConnectionProfileCloudsql.fromMap((map['cloudsql'] as Map).cast<String, dynamic>())),
      connectionProfileId: map['connectionProfileId'] == null ? null : pulumi.Output.create<String>(map['connectionProfileId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dbprovider: map['dbprovider'] == null ? null : pulumi.Output.create<String>(map['dbprovider'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      errors: map['errors'] == null ? null : pulumi.Output.create<List<ConnectionProfileError>>(pulumi.Input.decodeList<ConnectionProfileError>(map['errors'], (value) => ConnectionProfileError.fromMap((value as Map).cast<String, dynamic>()))),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mysql: map['mysql'] == null ? null : pulumi.Output.create<ConnectionProfileMysql>(ConnectionProfileMysql.fromMap((map['mysql'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      oracle: map['oracle'] == null ? null : pulumi.Output.create<ConnectionProfileOracle>(ConnectionProfileOracle.fromMap((map['oracle'] as Map).cast<String, dynamic>())),
      postgresql: map['postgresql'] == null ? null : pulumi.Output.create<ConnectionProfilePostgresql>(ConnectionProfilePostgresql.fromMap((map['postgresql'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

