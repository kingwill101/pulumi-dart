// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_entity_search_query.dart';
import 'workload_status_config_automatic.dart';
import 'workload_status_config_static.dart';

/// Input properties used for looking up and filtering Workload resources.
class WorkloadState {
  /// The New Relic account ID where you want to create the workload.
  final pulumi.Input<String>? accountId;
  /// The composite query used to compose a dynamic workload.
  final pulumi.Input<String>? compositeEntitySearchQuery;
  /// Relevant information about the workload.
  final pulumi.Input<String>? description;
  /// A list of entity GUIDs manually assigned to this workload. At least one of either `entity_guids` or `entity_search_query` is required.
  final pulumi.Input<List<String>>? entityGuids;
  /// A list of search queries that define a dynamic workload. At least one of either `entity_guids` or `entity_search_query` is required. See Nested entity_search_query blocks below for details.
  final pulumi.Input<List<WorkloadEntitySearchQuery>>? entitySearchQueries;
  /// The unique entity identifier of the workload in New Relic.
  final pulumi.Input<String>? guid;
  /// The workload's name.
  final pulumi.Input<String>? name;
  /// The URL of the workload.
  final pulumi.Input<String>? permalink;
  /// A list of account IDs that will be used to get entities from.
  final pulumi.Input<List<String>>? scopeAccountIds;
  /// An input object used to represent an automatic status configuration.See Nested status_config_automatic blocks below for details.
  final pulumi.Input<WorkloadStatusConfigAutomatic>? statusConfigAutomatic;
  /// A list of static status configurations. You can only configure one static status for a workload.See Nested status_config_static blocks below for details.
  final pulumi.Input<WorkloadStatusConfigStatic>? statusConfigStatic;
  /// The unique entity identifier of the workload.
  final pulumi.Input<String>? workloadId;

  /// Creates a new [WorkloadState].
  /// [accountId] The New Relic account ID where you want to create the workload.
  /// [compositeEntitySearchQuery] The composite query used to compose a dynamic workload.
  /// [description] Relevant information about the workload.
  /// [entityGuids] A list of entity GUIDs manually assigned to this workload. At least one of either `entity_guids` or `entity_search_query` is required.
  /// [entitySearchQueries] A list of search queries that define a dynamic workload. At least one of either `entity_guids` or `entity_search_query` is required. See Nested entity_search_query blocks below for details.
  /// [guid] The unique entity identifier of the workload in New Relic.
  /// [name] The workload's name.
  /// [permalink] The URL of the workload.
  /// [scopeAccountIds] A list of account IDs that will be used to get entities from.
  /// [statusConfigAutomatic] An input object used to represent an automatic status configuration.See Nested status_config_automatic blocks below for details.
  /// [statusConfigStatic] A list of static status configurations. You can only configure one static status for a workload.See Nested status_config_static blocks below for details.
  /// [workloadId] The unique entity identifier of the workload.
  WorkloadState({
    this.accountId,
    this.compositeEntitySearchQuery,
    this.description,
    this.entityGuids,
    this.entitySearchQueries,
    this.guid,
    this.name,
    this.permalink,
    this.scopeAccountIds,
    this.statusConfigAutomatic,
    this.statusConfigStatic,
    this.workloadId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'compositeEntitySearchQuery': ?compositeEntitySearchQuery,
      'description': ?description,
      'entityGuids': ?entityGuids,
      'entitySearchQueries': ?pulumi.Input.mapOptionalInputValue<List<WorkloadEntitySearchQuery>, List<Map<String, dynamic>>>(entitySearchQueries, (value) => pulumi.Input.encodeList<WorkloadEntitySearchQuery, Map<String, dynamic>>(value, (value) => value.toMap())),
      'guid': ?guid,
      'name': ?name,
      'permalink': ?permalink,
      'scopeAccountIds': ?scopeAccountIds,
      'statusConfigAutomatic': ?pulumi.Input.mapOptionalInputValue<WorkloadStatusConfigAutomatic, Map<String, dynamic>>(statusConfigAutomatic, (value) => value.toMap()),
      'statusConfigStatic': ?pulumi.Input.mapOptionalInputValue<WorkloadStatusConfigStatic, Map<String, dynamic>>(statusConfigStatic, (value) => value.toMap()),
      'workloadId': ?workloadId,
    };
  }

  factory WorkloadState.fromMap(Map<String, dynamic> map) {
    return WorkloadState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compositeEntitySearchQuery: (() { final guardedValue = map['compositeEntitySearchQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityGuids: (() { final guardedValue = map['entityGuids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      entitySearchQueries: (() { final guardedValue = map['entitySearchQueries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadEntitySearchQuery>(guardedValue, (value) => WorkloadEntitySearchQuery.fromMap((value as Map).cast<String, dynamic>()))); })(),
      guid: (() { final guardedValue = map['guid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permalink: (() { final guardedValue = map['permalink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopeAccountIds: (() { final guardedValue = map['scopeAccountIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      statusConfigAutomatic: (() { final guardedValue = map['statusConfigAutomatic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadStatusConfigAutomatic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statusConfigStatic: (() { final guardedValue = map['statusConfigStatic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadStatusConfigStatic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadId: (() { final guardedValue = map['workloadId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

