// ignore_for_file: unused_element, unnecessary_cast

import 'activity_entity_queries_properties_response_query_definitions.dart';
import 'system_data_response.dart';

/// Result data returned by getActivityCustomEntityQuery.
class GetActivityCustomEntityQueryResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The entity query content to display in timeline
  final String? content;
  /// The time the activity was created
  final String createdTimeUtc;
  /// The entity query description
  final String? description;
  /// Determines whether this activity is enabled or disabled.
  final bool? enabled;
  /// The query applied only to entities matching to all filters
  final Map<String, List<String>>? entitiesFilter;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The type of the query's source entity
  final String? inputEntityType;
  /// The kind of the entity query
  /// Expected value is 'Activity'.
  final String kind;
  /// The last time the activity was updated
  final String lastModifiedTimeUtc;
  /// The name of the resource
  final String name;
  /// The Activity query definitions
  final ActivityEntityQueriesPropertiesResponseQueryDefinitions? queryDefinitions;
  /// List of the fields of the source entity that are required to run the query
  final List<List<String>>? requiredInputFieldsSets;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The template id this activity was created from
  final String? templateName;
  /// The entity query title
  final String? title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetActivityCustomEntityQueryResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [content] The entity query content to display in timeline
  /// [createdTimeUtc] The time the activity was created
  /// [description] The entity query description
  /// [enabled] Determines whether this activity is enabled or disabled.
  /// [entitiesFilter] The query applied only to entities matching to all filters
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [inputEntityType] The type of the query's source entity
  /// [kind] The kind of the entity query
  /// [lastModifiedTimeUtc] The last time the activity was updated
  /// [name] The name of the resource
  /// [queryDefinitions] The Activity query definitions
  /// [requiredInputFieldsSets] List of the fields of the source entity that are required to run the query
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [templateName] The template id this activity was created from
  /// [title] The entity query title
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetActivityCustomEntityQueryResult({
    required this.azureApiVersion,
    this.content,
    required this.createdTimeUtc,
    this.description,
    this.enabled,
    this.entitiesFilter,
    this.etag,
    required this.id,
    this.inputEntityType,
    required this.kind,
    required this.lastModifiedTimeUtc,
    required this.name,
    this.queryDefinitions,
    this.requiredInputFieldsSets,
    required this.systemData,
    this.templateName,
    this.title,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'content': ?content,
      'createdTimeUtc': createdTimeUtc,
      'description': ?description,
      'enabled': ?enabled,
      'entitiesFilter': ?entitiesFilter,
      'etag': ?etag,
      'id': id,
      'inputEntityType': ?inputEntityType,
      'kind': kind,
      'lastModifiedTimeUtc': lastModifiedTimeUtc,
      'name': name,
      'queryDefinitions': ?queryDefinitions == null ? null : queryDefinitions!.toMap(),
      'requiredInputFieldsSets': ?requiredInputFieldsSets,
      'systemData': systemData.toMap(),
      'templateName': ?templateName,
      'title': ?title,
      'type': type,
    };
  }

  factory GetActivityCustomEntityQueryResult.fromMap(Map<String, dynamic> map) {
    return GetActivityCustomEntityQueryResult(
      azureApiVersion: map['azureApiVersion'] as String,
      content: map['content'] == null ? null : map['content']! as String,
      createdTimeUtc: map['createdTimeUtc'] as String,
      description: map['description'] == null ? null : map['description']! as String,
      enabled: map['enabled'] == null ? null : map['enabled']! as bool,
      entitiesFilter: map['entitiesFilter'] == null ? null : (map['entitiesFilter']! as Map).cast<String, List<String>>(),
      etag: map['etag'] == null ? null : map['etag']! as String,
      id: map['id'] as String,
      inputEntityType: map['inputEntityType'] == null ? null : map['inputEntityType']! as String,
      kind: map['kind'] as String,
      lastModifiedTimeUtc: map['lastModifiedTimeUtc'] as String,
      name: map['name'] as String,
      queryDefinitions: map['queryDefinitions'] == null ? null : ActivityEntityQueriesPropertiesResponseQueryDefinitions.fromMap((map['queryDefinitions']! as Map).cast<String, dynamic>()),
      requiredInputFieldsSets: map['requiredInputFieldsSets'] == null ? null : (map['requiredInputFieldsSets']! as List).cast<List<String>>(),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      templateName: map['templateName'] == null ? null : map['templateName']! as String,
      title: map['title'] == null ? null : map['title']! as String,
      type: map['type'] as String,
    );
  }
}

