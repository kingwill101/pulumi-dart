// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_forward_ssh_connectivity.dart';
import 'connection_profile_gcs_profile.dart';
import 'connection_profile_mongodb_profile.dart';
import 'connection_profile_mysql_profile.dart';
import 'connection_profile_oracle_profile.dart';
import 'connection_profile_postgresql_profile.dart';
import 'connection_profile_private_connectivity.dart';
import 'connection_profile_salesforce_profile.dart';
import 'connection_profile_spanner_profile.dart';
import 'connection_profile_sql_server_profile.dart';

/// {@template pulumi_datastream_connection_profile_connection_profile_args_doc}
/// The set of arguments for ConnectionProfile.
/// {@endtemplate}
/// {@macro pulumi_datastream_connection_profile_connection_profile_args_doc}
class ConnectionProfileArgs {
  /// BigQuery warehouse profile.
  final pulumi.Input<Map<String, dynamic>>? bigqueryProfile;
  /// The connection profile identifier.
  final pulumi.Input<String> connectionProfileId;
  /// Create the connection profile without validating it.
  final pulumi.Input<bool>? createWithoutValidation;
  /// Display name.
  final pulumi.Input<String> displayName;
  /// Forward SSH tunnel connectivity.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileForwardSshConnectivity>? forwardSshConnectivity;
  /// Cloud Storage bucket profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileGcsProfile>? gcsProfile;
  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of the location this connection profile is located in.
  final pulumi.Input<String> location;
  /// Configuration for connecting to a MongoDB database.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileMongodbProfile>? mongodbProfile;
  /// MySQL database profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileMysqlProfile>? mysqlProfile;
  /// Oracle database profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileOracleProfile>? oracleProfile;
  /// PostgreSQL database profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfilePostgresqlProfile>? postgresqlProfile;
  /// Private connectivity.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfilePrivateConnectivity>? privateConnectivity;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Salesforce profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileSalesforceProfile>? salesforceProfile;
  /// Spanner profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileSpannerProfile>? spannerProfile;
  /// SQL Server database profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileSqlServerProfile>? sqlServerProfile;

  /// Creates a new [ConnectionProfileArgs].
  /// [bigqueryProfile] BigQuery warehouse profile.
  /// [connectionProfileId] The connection profile identifier.
  /// [createWithoutValidation] Create the connection profile without validating it.
  /// [displayName] Display name.
  /// [forwardSshConnectivity] Forward SSH tunnel connectivity.
  /// [gcsProfile] Cloud Storage bucket profile.
  /// [labels] Labels.
  /// [location] The name of the location this connection profile is located in.
  /// [mongodbProfile] Configuration for connecting to a MongoDB database.
  /// [mysqlProfile] MySQL database profile.
  /// [oracleProfile] Oracle database profile.
  /// [postgresqlProfile] PostgreSQL database profile.
  /// [privateConnectivity] Private connectivity.
  /// [project] The ID of the project in which the resource belongs.
  /// [salesforceProfile] Salesforce profile.
  /// [spannerProfile] Spanner profile.
  /// [sqlServerProfile] SQL Server database profile.
  ConnectionProfileArgs({
    pulumi.Output<Map<String, dynamic>>? bigqueryProfile,
    required pulumi.Output<String> connectionProfileId,
    pulumi.Output<bool>? createWithoutValidation,
    required pulumi.Output<String> displayName,
    pulumi.Output<ConnectionProfileForwardSshConnectivity>? forwardSshConnectivity,
    pulumi.Output<ConnectionProfileGcsProfile>? gcsProfile,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<ConnectionProfileMongodbProfile>? mongodbProfile,
    pulumi.Output<ConnectionProfileMysqlProfile>? mysqlProfile,
    pulumi.Output<ConnectionProfileOracleProfile>? oracleProfile,
    pulumi.Output<ConnectionProfilePostgresqlProfile>? postgresqlProfile,
    pulumi.Output<ConnectionProfilePrivateConnectivity>? privateConnectivity,
    pulumi.Output<String>? project,
    pulumi.Output<ConnectionProfileSalesforceProfile>? salesforceProfile,
    pulumi.Output<ConnectionProfileSpannerProfile>? spannerProfile,
    pulumi.Output<ConnectionProfileSqlServerProfile>? sqlServerProfile,
  }) :
      bigqueryProfile = pulumi.Input.asOptionalInput<Map<String, dynamic>>(bigqueryProfile),
      connectionProfileId = pulumi.Input.asInput<String>(connectionProfileId),
      createWithoutValidation = pulumi.Input.asOptionalInput<bool>(createWithoutValidation),
      displayName = pulumi.Input.asInput<String>(displayName),
      forwardSshConnectivity = pulumi.Input.asOptionalInput<ConnectionProfileForwardSshConnectivity>(forwardSshConnectivity),
      gcsProfile = pulumi.Input.asOptionalInput<ConnectionProfileGcsProfile>(gcsProfile),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      mongodbProfile = pulumi.Input.asOptionalInput<ConnectionProfileMongodbProfile>(mongodbProfile),
      mysqlProfile = pulumi.Input.asOptionalInput<ConnectionProfileMysqlProfile>(mysqlProfile),
      oracleProfile = pulumi.Input.asOptionalInput<ConnectionProfileOracleProfile>(oracleProfile),
      postgresqlProfile = pulumi.Input.asOptionalInput<ConnectionProfilePostgresqlProfile>(postgresqlProfile),
      privateConnectivity = pulumi.Input.asOptionalInput<ConnectionProfilePrivateConnectivity>(privateConnectivity),
      project = pulumi.Input.asOptionalInput<String>(project),
      salesforceProfile = pulumi.Input.asOptionalInput<ConnectionProfileSalesforceProfile>(salesforceProfile),
      spannerProfile = pulumi.Input.asOptionalInput<ConnectionProfileSpannerProfile>(spannerProfile),
      sqlServerProfile = pulumi.Input.asOptionalInput<ConnectionProfileSqlServerProfile>(sqlServerProfile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryProfile': ?bigqueryProfile,
      'connectionProfileId': connectionProfileId,
      'createWithoutValidation': ?createWithoutValidation,
      'displayName': displayName,
      'forwardSshConnectivity': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileForwardSshConnectivity, Map<String, dynamic>>(forwardSshConnectivity, (value) => value.toMap()),
      'gcsProfile': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileGcsProfile, Map<String, dynamic>>(gcsProfile, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'mongodbProfile': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileMongodbProfile, Map<String, dynamic>>(mongodbProfile, (value) => value.toMap()),
      'mysqlProfile': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileMysqlProfile, Map<String, dynamic>>(mysqlProfile, (value) => value.toMap()),
      'oracleProfile': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileOracleProfile, Map<String, dynamic>>(oracleProfile, (value) => value.toMap()),
      'postgresqlProfile': ?pulumi.Input.mapOptionalInputValue<ConnectionProfilePostgresqlProfile, Map<String, dynamic>>(postgresqlProfile, (value) => value.toMap()),
      'privateConnectivity': ?pulumi.Input.mapOptionalInputValue<ConnectionProfilePrivateConnectivity, Map<String, dynamic>>(privateConnectivity, (value) => value.toMap()),
      'project': ?project,
      'salesforceProfile': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileSalesforceProfile, Map<String, dynamic>>(salesforceProfile, (value) => value.toMap()),
      'spannerProfile': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileSpannerProfile, Map<String, dynamic>>(spannerProfile, (value) => value.toMap()),
      'sqlServerProfile': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileSqlServerProfile, Map<String, dynamic>>(sqlServerProfile, (value) => value.toMap()),
    };
  }

  factory ConnectionProfileArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileArgs(
      bigqueryProfile: map['bigqueryProfile'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['bigqueryProfile'] as Map).cast<String, dynamic>()),
      connectionProfileId: pulumi.Output.create<String>(map['connectionProfileId'] as String),
      createWithoutValidation: map['createWithoutValidation'] == null ? null : pulumi.Output.create<bool>(map['createWithoutValidation'] as bool),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      forwardSshConnectivity: map['forwardSshConnectivity'] == null ? null : pulumi.Output.create<ConnectionProfileForwardSshConnectivity>(ConnectionProfileForwardSshConnectivity.fromMap((map['forwardSshConnectivity'] as Map).cast<String, dynamic>())),
      gcsProfile: map['gcsProfile'] == null ? null : pulumi.Output.create<ConnectionProfileGcsProfile>(ConnectionProfileGcsProfile.fromMap((map['gcsProfile'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      mongodbProfile: map['mongodbProfile'] == null ? null : pulumi.Output.create<ConnectionProfileMongodbProfile>(ConnectionProfileMongodbProfile.fromMap((map['mongodbProfile'] as Map).cast<String, dynamic>())),
      mysqlProfile: map['mysqlProfile'] == null ? null : pulumi.Output.create<ConnectionProfileMysqlProfile>(ConnectionProfileMysqlProfile.fromMap((map['mysqlProfile'] as Map).cast<String, dynamic>())),
      oracleProfile: map['oracleProfile'] == null ? null : pulumi.Output.create<ConnectionProfileOracleProfile>(ConnectionProfileOracleProfile.fromMap((map['oracleProfile'] as Map).cast<String, dynamic>())),
      postgresqlProfile: map['postgresqlProfile'] == null ? null : pulumi.Output.create<ConnectionProfilePostgresqlProfile>(ConnectionProfilePostgresqlProfile.fromMap((map['postgresqlProfile'] as Map).cast<String, dynamic>())),
      privateConnectivity: map['privateConnectivity'] == null ? null : pulumi.Output.create<ConnectionProfilePrivateConnectivity>(ConnectionProfilePrivateConnectivity.fromMap((map['privateConnectivity'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      salesforceProfile: map['salesforceProfile'] == null ? null : pulumi.Output.create<ConnectionProfileSalesforceProfile>(ConnectionProfileSalesforceProfile.fromMap((map['salesforceProfile'] as Map).cast<String, dynamic>())),
      spannerProfile: map['spannerProfile'] == null ? null : pulumi.Output.create<ConnectionProfileSpannerProfile>(ConnectionProfileSpannerProfile.fromMap((map['spannerProfile'] as Map).cast<String, dynamic>())),
      sqlServerProfile: map['sqlServerProfile'] == null ? null : pulumi.Output.create<ConnectionProfileSqlServerProfile>(ConnectionProfileSqlServerProfile.fromMap((map['sqlServerProfile'] as Map).cast<String, dynamic>())),
    );
  }
}

