// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_entity_search_query.dart';
import 'workload_status_config_automatic.dart';
import 'workload_status_config_static.dart';

/// {@template pulumi_plugins_workload_workload_args_doc}
/// The set of arguments for Workload.
/// {@endtemplate}
/// {@macro pulumi_plugins_workload_workload_args_doc}
class WorkloadArgs {
  /// The New Relic account ID where you want to create the workload.
  final pulumi.Input<String>? accountId;

  /// Relevant information about the workload.
  final pulumi.Input<String>? description;

  /// A list of entity GUIDs manually assigned to this workload. At least one of either `entity_guids` or `entity_search_query` is required.
  final pulumi.Input<List<String>>? entityGuids;

  /// A list of search queries that define a dynamic workload. At least one of either `entity_guids` or `entity_search_query` is required. See Nested entity_search_query blocks below for details.
  final pulumi.Input<List<WorkloadEntitySearchQuery>>? entitySearchQueries;

  /// The workload's name.
  final pulumi.Input<String>? name;

  /// A list of account IDs that will be used to get entities from.
  final pulumi.Input<List<String>>? scopeAccountIds;

  /// An input object used to represent an automatic status configuration.See Nested status_config_automatic blocks below for details.
  final pulumi.Input<WorkloadStatusConfigAutomatic>? statusConfigAutomatic;

  /// A list of static status configurations. You can only configure one static status for a workload.See Nested status_config_static blocks below for details.
  final pulumi.Input<WorkloadStatusConfigStatic>? statusConfigStatic;

  /// Creates a new [WorkloadArgs].
  /// [accountId] The New Relic account ID where you want to create the workload.
  /// [description] Relevant information about the workload.
  /// [entityGuids] A list of entity GUIDs manually assigned to this workload. At least one of either `entity_guids` or `entity_search_query` is required.
  /// [entitySearchQueries] A list of search queries that define a dynamic workload. At least one of either `entity_guids` or `entity_search_query` is required. See Nested entity_search_query blocks below for details.
  /// [name] The workload's name.
  /// [scopeAccountIds] A list of account IDs that will be used to get entities from.
  /// [statusConfigAutomatic] An input object used to represent an automatic status configuration.See Nested status_config_automatic blocks below for details.
  /// [statusConfigStatic] A list of static status configurations. You can only configure one static status for a workload.See Nested status_config_static blocks below for details.
  WorkloadArgs({
    this.accountId,
    this.description,
    this.entityGuids,
    this.entitySearchQueries,
    this.name,
    this.scopeAccountIds,
    this.statusConfigAutomatic,
    this.statusConfigStatic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'entityGuids': ?entityGuids,
      'entitySearchQueries':
          ?pulumi.Input.mapOptionalInputValue<
            List<WorkloadEntitySearchQuery>,
            List<Map<String, dynamic>>
          >(
            entitySearchQueries,
            (value) =>
                pulumi.Input.encodeList<
                  WorkloadEntitySearchQuery,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'scopeAccountIds': ?scopeAccountIds,
      'statusConfigAutomatic':
          ?pulumi.Input.mapOptionalInputValue<
            WorkloadStatusConfigAutomatic,
            Map<String, dynamic>
          >(statusConfigAutomatic, (value) => value.toMap()),
      'statusConfigStatic':
          ?pulumi.Input.mapOptionalInputValue<
            WorkloadStatusConfigStatic,
            Map<String, dynamic>
          >(statusConfigStatic, (value) => value.toMap()),
    };
  }

  factory WorkloadArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadArgs(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      entityGuids: (() {
        final guardedValue = map['entityGuids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      entitySearchQueries: (() {
        final guardedValue = map['entitySearchQueries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WorkloadEntitySearchQuery>(
            guardedValue,
            (value) => WorkloadEntitySearchQuery.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scopeAccountIds: (() {
        final guardedValue = map['scopeAccountIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      statusConfigAutomatic: (() {
        final guardedValue = map['statusConfigAutomatic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkloadStatusConfigAutomatic.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      statusConfigStatic: (() {
        final guardedValue = map['statusConfigStatic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkloadStatusConfigStatic.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
