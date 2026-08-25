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
  final pulumi.Input<Map<String, dynamic>?>? bigqueryProfile;
  /// The connection profile identifier.
  final pulumi.Input<String> connectionProfileId;
  /// Create the connection profile without validating it.
  final pulumi.Input<bool?>? createWithoutValidation;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Display name.
  final pulumi.Input<String> displayName;
  /// Forward SSH tunnel connectivity.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileForwardSshConnectivity?>? forwardSshConnectivity;
  /// Cloud Storage bucket profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileGcsProfile?>? gcsProfile;
  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The name of the location this connection profile is located in.
  final pulumi.Input<String> location;
  /// Configuration for connecting to a MongoDB database.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileMongodbProfile?>? mongodbProfile;
  /// MySQL database profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileMysqlProfile?>? mysqlProfile;
  /// Oracle database profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileOracleProfile?>? oracleProfile;
  /// PostgreSQL database profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfilePostgresqlProfile?>? postgresqlProfile;
  /// Private connectivity.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfilePrivateConnectivity?>? privateConnectivity;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// (Optional, Beta)
  /// Salesforce profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileSalesforceProfile?>? salesforceProfile;
  /// (Optional, Beta)
  /// Spanner profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileSpannerProfile?>? spannerProfile;
  /// SQL Server database profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileSqlServerProfile?>? sqlServerProfile;

  /// Creates a new [ConnectionProfileArgs].
  /// [bigqueryProfile] BigQuery warehouse profile.
  /// [connectionProfileId] The connection profile identifier.
  /// [createWithoutValidation] Create the connection profile without validating it.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  /// [salesforceProfile] (Optional, Beta)
  /// [spannerProfile] (Optional, Beta)
  /// [sqlServerProfile] SQL Server database profile.
  const ConnectionProfileArgs({
    this.bigqueryProfile,
    required this.connectionProfileId,
    this.createWithoutValidation,
    this.deletionPolicy,
    required this.displayName,
    this.forwardSshConnectivity,
    this.gcsProfile,
    this.labels,
    required this.location,
    this.mongodbProfile,
    this.mysqlProfile,
    this.oracleProfile,
    this.postgresqlProfile,
    this.privateConnectivity,
    this.project,
    this.salesforceProfile,
    this.spannerProfile,
    this.sqlServerProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryProfile': ?bigqueryProfile,
      'connectionProfileId': connectionProfileId,
      'createWithoutValidation': ?createWithoutValidation,
      'deletionPolicy': ?deletionPolicy,
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
      bigqueryProfile: (() { final guardedValue = map['bigqueryProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      connectionProfileId: pulumi.Input.fromValue(map['connectionProfileId'] as String),
      createWithoutValidation: (() { final guardedValue = map['createWithoutValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      forwardSshConnectivity: (() { final guardedValue = map['forwardSshConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileForwardSshConnectivity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcsProfile: (() { final guardedValue = map['gcsProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileGcsProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      mongodbProfile: (() { final guardedValue = map['mongodbProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileMongodbProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mysqlProfile: (() { final guardedValue = map['mysqlProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileMysqlProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oracleProfile: (() { final guardedValue = map['oracleProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileOracleProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      postgresqlProfile: (() { final guardedValue = map['postgresqlProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfilePostgresqlProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateConnectivity: (() { final guardedValue = map['privateConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfilePrivateConnectivity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      salesforceProfile: (() { final guardedValue = map['salesforceProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileSalesforceProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spannerProfile: (() { final guardedValue = map['spannerProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileSpannerProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqlServerProfile: (() { final guardedValue = map['sqlServerProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileSqlServerProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
