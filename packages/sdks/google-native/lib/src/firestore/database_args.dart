// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_app_engine_integration_mode.dart';
import 'database_concurrency_mode.dart';
import 'database_delete_protection_state.dart';
import 'database_point_in_time_recovery_enablement.dart';
import 'database_type.dart';

/// {@template pulumi_firestore_v1_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_firestore_v1_database_args_doc}
class DatabaseArgs {
  /// The App Engine integration mode to use for this database.
  final pulumi.Input<DatabaseAppEngineIntegrationMode>?
  appEngineIntegrationMode;

  /// The concurrency control mode to use for this database.
  final pulumi.Input<DatabaseConcurrencyMode>? concurrencyMode;

  /// Required. The ID to use for the database, which will become the final component of the database's resource name. This value should be 4-63 characters. Valid characters are /a-z-/ with first character a letter and the last a letter or a number. Must not be UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/. "(default)" database id is also valid.
  final pulumi.Input<String> databaseId;

  /// State of delete protection for the database.
  final pulumi.Input<DatabaseDeleteProtectionState>? deleteProtectionState;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// The location of the database. Available locations are listed at https://cloud.google.com/firestore/docs/locations.
  final pulumi.Input<String>? location;

  /// The resource name of the Database. Format: `projects/{project}/databases/{database}`
  final pulumi.Input<String>? name;

  /// Whether to enable the PITR feature on this database.
  final pulumi.Input<DatabasePointInTimeRecoveryEnablement>?
  pointInTimeRecoveryEnablement;
  final pulumi.Input<String>? project;

  /// The type of the database. See https://cloud.google.com/datastore/docs/firestore-or-datastore for information about how to choose.
  final pulumi.Input<DatabaseType>? type;

  /// Creates a new [DatabaseArgs].
  /// [appEngineIntegrationMode] The App Engine integration mode to use for this database.
  /// [concurrencyMode] The concurrency control mode to use for this database.
  /// [databaseId] Required. The ID to use for the database, which will become the final component of the database's resource name. This value should be 4-63 characters. Valid characters are /a-z-/ with first character a letter and the last a letter or a number. Must not be UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/. "(default)" database id is also valid.
  /// [deleteProtectionState] State of delete protection for the database.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [location] The location of the database. Available locations are listed at https://cloud.google.com/firestore/docs/locations.
  /// [name] The resource name of the Database. Format: `projects/{project}/databases/{database}`
  /// [pointInTimeRecoveryEnablement] Whether to enable the PITR feature on this database.
  /// [project] Optional.
  /// [type] The type of the database. See https://cloud.google.com/datastore/docs/firestore-or-datastore for information about how to choose.
  DatabaseArgs({
    this.appEngineIntegrationMode,
    this.concurrencyMode,
    required this.databaseId,
    this.deleteProtectionState,
    this.etag,
    this.location,
    this.name,
    this.pointInTimeRecoveryEnablement,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineIntegrationMode':
          ?pulumi.Input.mapOptionalInputValue<
            DatabaseAppEngineIntegrationMode,
            String
          >(appEngineIntegrationMode, (value) => value.wireValue),
      'concurrencyMode':
          ?pulumi.Input.mapOptionalInputValue<DatabaseConcurrencyMode, String>(
            concurrencyMode,
            (value) => value.wireValue,
          ),
      'databaseId': databaseId,
      'deleteProtectionState':
          ?pulumi.Input.mapOptionalInputValue<
            DatabaseDeleteProtectionState,
            String
          >(deleteProtectionState, (value) => value.wireValue),
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'pointInTimeRecoveryEnablement':
          ?pulumi.Input.mapOptionalInputValue<
            DatabasePointInTimeRecoveryEnablement,
            String
          >(pointInTimeRecoveryEnablement, (value) => value.wireValue),
      'project': ?project,
      'type': ?pulumi.Input.mapOptionalInputValue<DatabaseType, String>(
        type,
        (value) => value.wireValue,
      ),
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      appEngineIntegrationMode: (() {
        final guardedValue = map['appEngineIntegrationMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatabaseAppEngineIntegrationMode.fromValue(guardedValue as String),
        );
      })(),
      concurrencyMode: (() {
        final guardedValue = map['concurrencyMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatabaseConcurrencyMode.fromValue(guardedValue as String),
        );
      })(),
      databaseId: pulumi.Input.fromValue(map['databaseId'] as String),
      deleteProtectionState: (() {
        final guardedValue = map['deleteProtectionState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatabaseDeleteProtectionState.fromValue(guardedValue as String),
        );
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pointInTimeRecoveryEnablement: (() {
        final guardedValue = map['pointInTimeRecoveryEnablement'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatabasePointInTimeRecoveryEnablement.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatabaseType.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
