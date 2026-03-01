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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? compositeEntitySearchQuery,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? entityGuids,
    pulumi.Output<List<WorkloadEntitySearchQuery>>? entitySearchQueries,
    pulumi.Output<String>? guid,
    pulumi.Output<String>? name,
    pulumi.Output<String>? permalink,
    pulumi.Output<List<String>>? scopeAccountIds,
    pulumi.Output<WorkloadStatusConfigAutomatic>? statusConfigAutomatic,
    pulumi.Output<WorkloadStatusConfigStatic>? statusConfigStatic,
    pulumi.Output<String>? workloadId,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      compositeEntitySearchQuery = pulumi.Input.asOptionalInput<String>(compositeEntitySearchQuery),
      description = pulumi.Input.asOptionalInput<String>(description),
      entityGuids = pulumi.Input.asOptionalInput<List<String>>(entityGuids),
      entitySearchQueries = pulumi.Input.asOptionalInput<List<WorkloadEntitySearchQuery>>(entitySearchQueries),
      guid = pulumi.Input.asOptionalInput<String>(guid),
      name = pulumi.Input.asOptionalInput<String>(name),
      permalink = pulumi.Input.asOptionalInput<String>(permalink),
      scopeAccountIds = pulumi.Input.asOptionalInput<List<String>>(scopeAccountIds),
      statusConfigAutomatic = pulumi.Input.asOptionalInput<WorkloadStatusConfigAutomatic>(statusConfigAutomatic),
      statusConfigStatic = pulumi.Input.asOptionalInput<WorkloadStatusConfigStatic>(statusConfigStatic),
      workloadId = pulumi.Input.asOptionalInput<String>(workloadId);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      compositeEntitySearchQuery: map['compositeEntitySearchQuery'] == null ? null : pulumi.Output.create<String>(map['compositeEntitySearchQuery'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      entityGuids: map['entityGuids'] == null ? null : pulumi.Output.create<List<String>>((map['entityGuids'] as List).cast<String>()),
      entitySearchQueries: map['entitySearchQueries'] == null ? null : pulumi.Output.create<List<WorkloadEntitySearchQuery>>(pulumi.Input.decodeList<WorkloadEntitySearchQuery>(map['entitySearchQueries'], (value) => WorkloadEntitySearchQuery.fromMap((value as Map).cast<String, dynamic>()))),
      guid: map['guid'] == null ? null : pulumi.Output.create<String>(map['guid'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      permalink: map['permalink'] == null ? null : pulumi.Output.create<String>(map['permalink'] as String),
      scopeAccountIds: map['scopeAccountIds'] == null ? null : pulumi.Output.create<List<String>>((map['scopeAccountIds'] as List).cast<String>()),
      statusConfigAutomatic: map['statusConfigAutomatic'] == null ? null : pulumi.Output.create<WorkloadStatusConfigAutomatic>(WorkloadStatusConfigAutomatic.fromMap((map['statusConfigAutomatic'] as Map).cast<String, dynamic>())),
      statusConfigStatic: map['statusConfigStatic'] == null ? null : pulumi.Output.create<WorkloadStatusConfigStatic>(WorkloadStatusConfigStatic.fromMap((map['statusConfigStatic'] as Map).cast<String, dynamic>())),
      workloadId: map['workloadId'] == null ? null : pulumi.Output.create<String>(map['workloadId'] as String),
    );
  }
}

