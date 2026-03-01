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
  final pulumi.Input<DatabaseAppEngineIntegrationMode>? appEngineIntegrationMode;
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
  final pulumi.Input<DatabasePointInTimeRecoveryEnablement>? pointInTimeRecoveryEnablement;
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
    pulumi.Output<DatabaseAppEngineIntegrationMode>? appEngineIntegrationMode,
    pulumi.Output<DatabaseConcurrencyMode>? concurrencyMode,
    required pulumi.Output<String> databaseId,
    pulumi.Output<DatabaseDeleteProtectionState>? deleteProtectionState,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<DatabasePointInTimeRecoveryEnablement>? pointInTimeRecoveryEnablement,
    pulumi.Output<String>? project,
    pulumi.Output<DatabaseType>? type,
  }) :
      appEngineIntegrationMode = pulumi.Input.asOptionalInput<DatabaseAppEngineIntegrationMode>(appEngineIntegrationMode),
      concurrencyMode = pulumi.Input.asOptionalInput<DatabaseConcurrencyMode>(concurrencyMode),
      databaseId = pulumi.Input.asInput<String>(databaseId),
      deleteProtectionState = pulumi.Input.asOptionalInput<DatabaseDeleteProtectionState>(deleteProtectionState),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      pointInTimeRecoveryEnablement = pulumi.Input.asOptionalInput<DatabasePointInTimeRecoveryEnablement>(pointInTimeRecoveryEnablement),
      project = pulumi.Input.asOptionalInput<String>(project),
      type = pulumi.Input.asOptionalInput<DatabaseType>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineIntegrationMode': ?pulumi.Input.mapOptionalInputValue<DatabaseAppEngineIntegrationMode, String>(appEngineIntegrationMode, (value) => value.value),
      'concurrencyMode': ?pulumi.Input.mapOptionalInputValue<DatabaseConcurrencyMode, String>(concurrencyMode, (value) => value.value),
      'databaseId': databaseId,
      'deleteProtectionState': ?pulumi.Input.mapOptionalInputValue<DatabaseDeleteProtectionState, String>(deleteProtectionState, (value) => value.value),
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'pointInTimeRecoveryEnablement': ?pulumi.Input.mapOptionalInputValue<DatabasePointInTimeRecoveryEnablement, String>(pointInTimeRecoveryEnablement, (value) => value.value),
      'project': ?project,
      'type': ?pulumi.Input.mapOptionalInputValue<DatabaseType, String>(type, (value) => value.value),
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      appEngineIntegrationMode: map['appEngineIntegrationMode'] == null ? null : pulumi.Output.create<DatabaseAppEngineIntegrationMode>(DatabaseAppEngineIntegrationMode.fromValue(map['appEngineIntegrationMode'] as String)),
      concurrencyMode: map['concurrencyMode'] == null ? null : pulumi.Output.create<DatabaseConcurrencyMode>(DatabaseConcurrencyMode.fromValue(map['concurrencyMode'] as String)),
      databaseId: pulumi.Output.create<String>(map['databaseId'] as String),
      deleteProtectionState: map['deleteProtectionState'] == null ? null : pulumi.Output.create<DatabaseDeleteProtectionState>(DatabaseDeleteProtectionState.fromValue(map['deleteProtectionState'] as String)),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pointInTimeRecoveryEnablement: map['pointInTimeRecoveryEnablement'] == null ? null : pulumi.Output.create<DatabasePointInTimeRecoveryEnablement>(DatabasePointInTimeRecoveryEnablement.fromValue(map['pointInTimeRecoveryEnablement'] as String)),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<DatabaseType>(DatabaseType.fromValue(map['type'] as String)),
    );
  }
}

