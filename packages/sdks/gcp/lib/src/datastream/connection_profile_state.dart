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

/// Input properties used for looking up and filtering ConnectionProfile resources.
class ConnectionProfileState {
  /// BigQuery warehouse profile.
  final pulumi.Input<Map<String, dynamic>>? bigqueryProfile;

  /// The connection profile identifier.
  final pulumi.Input<String>? connectionProfileId;

  /// Create the connection profile without validating it.
  final pulumi.Input<bool>? createWithoutValidation;

  /// Display name.
  final pulumi.Input<String>? displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;

  /// Forward SSH tunnel connectivity.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileForwardSshConnectivity>?
  forwardSshConnectivity;

  /// Cloud Storage bucket profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileGcsProfile>? gcsProfile;

  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The name of the location this connection profile is located in.
  final pulumi.Input<String>? location;

  /// Configuration for connecting to a MongoDB database.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileMongodbProfile>? mongodbProfile;

  /// MySQL database profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileMysqlProfile>? mysqlProfile;

  /// The resource's name.
  final pulumi.Input<String>? name;

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

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Salesforce profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileSalesforceProfile>? salesforceProfile;

  /// Spanner profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileSpannerProfile>? spannerProfile;

  /// SQL Server database profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileSqlServerProfile>? sqlServerProfile;

  /// Creates a new [ConnectionProfileState].
  /// [bigqueryProfile] BigQuery warehouse profile.
  /// [connectionProfileId] The connection profile identifier.
  /// [createWithoutValidation] Create the connection profile without validating it.
  /// [displayName] Display name.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [forwardSshConnectivity] Forward SSH tunnel connectivity.
  /// [gcsProfile] Cloud Storage bucket profile.
  /// [labels] Labels.
  /// [location] The name of the location this connection profile is located in.
  /// [mongodbProfile] Configuration for connecting to a MongoDB database.
  /// [mysqlProfile] MySQL database profile.
  /// [name] The resource's name.
  /// [oracleProfile] Oracle database profile.
  /// [postgresqlProfile] PostgreSQL database profile.
  /// [privateConnectivity] Private connectivity.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [salesforceProfile] Salesforce profile.
  /// [spannerProfile] Spanner profile.
  /// [sqlServerProfile] SQL Server database profile.
  ConnectionProfileState({
    this.bigqueryProfile,
    this.connectionProfileId,
    this.createWithoutValidation,
    this.displayName,
    this.effectiveLabels,
    this.forwardSshConnectivity,
    this.gcsProfile,
    this.labels,
    this.location,
    this.mongodbProfile,
    this.mysqlProfile,
    this.name,
    this.oracleProfile,
    this.postgresqlProfile,
    this.privateConnectivity,
    this.project,
    this.pulumiLabels,
    this.salesforceProfile,
    this.spannerProfile,
    this.sqlServerProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryProfile': ?bigqueryProfile,
      'connectionProfileId': ?connectionProfileId,
      'createWithoutValidation': ?createWithoutValidation,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'forwardSshConnectivity':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionProfileForwardSshConnectivity,
            Map<String, dynamic>
          >(forwardSshConnectivity, (value) => value.toMap()),
      'gcsProfile':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionProfileGcsProfile,
            Map<String, dynamic>
          >(gcsProfile, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'mongodbProfile':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionProfileMongodbProfile,
            Map<String, dynamic>
          >(mongodbProfile, (value) => value.toMap()),
      'mysqlProfile':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionProfileMysqlProfile,
            Map<String, dynamic>
          >(mysqlProfile, (value) => value.toMap()),
      'name': ?name,
      'oracleProfile':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionProfileOracleProfile,
            Map<String, dynamic>
          >(oracleProfile, (value) => value.toMap()),
      'postgresqlProfile':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionProfilePostgresqlProfile,
            Map<String, dynamic>
          >(postgresqlProfile, (value) => value.toMap()),
      'privateConnectivity':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionProfilePrivateConnectivity,
            Map<String, dynamic>
          >(privateConnectivity, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'salesforceProfile':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionProfileSalesforceProfile,
            Map<String, dynamic>
          >(salesforceProfile, (value) => value.toMap()),
      'spannerProfile':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionProfileSpannerProfile,
            Map<String, dynamic>
          >(spannerProfile, (value) => value.toMap()),
      'sqlServerProfile':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionProfileSqlServerProfile,
            Map<String, dynamic>
          >(sqlServerProfile, (value) => value.toMap()),
    };
  }

  factory ConnectionProfileState.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileState(
      bigqueryProfile: (() {
        final guardedValue = map['bigqueryProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      connectionProfileId: (() {
        final guardedValue = map['connectionProfileId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createWithoutValidation: (() {
        final guardedValue = map['createWithoutValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      forwardSshConnectivity: (() {
        final guardedValue = map['forwardSshConnectivity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionProfileForwardSshConnectivity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      gcsProfile: (() {
        final guardedValue = map['gcsProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionProfileGcsProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mongodbProfile: (() {
        final guardedValue = map['mongodbProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionProfileMongodbProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      mysqlProfile: (() {
        final guardedValue = map['mysqlProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionProfileMysqlProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oracleProfile: (() {
        final guardedValue = map['oracleProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionProfileOracleProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      postgresqlProfile: (() {
        final guardedValue = map['postgresqlProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionProfilePostgresqlProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      privateConnectivity: (() {
        final guardedValue = map['privateConnectivity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionProfilePrivateConnectivity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      salesforceProfile: (() {
        final guardedValue = map['salesforceProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionProfileSalesforceProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      spannerProfile: (() {
        final guardedValue = map['spannerProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionProfileSpannerProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sqlServerProfile: (() {
        final guardedValue = map['sqlServerProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionProfileSqlServerProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
