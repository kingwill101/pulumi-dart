// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_entity_queries_properties_response_query_definitions.dart';
import 'system_data_response.dart';

/// Result data returned by getActivityCustomEntityQuery.
class GetActivityCustomEntityQueryResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The entity query content to display in timeline
  final String? content;
  /// The time the activity was created
  final String? createdTimeUtc;
  /// The entity query description
  final String? description;
  /// Determines whether this activity is enabled or disabled.
  final bool? enabled;
  /// The query applied only to entities matching to all filters
  final Map<String, List<String>>? entitiesFilter;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The type of the query's source entity
  final String? inputEntityType;
  /// The kind of the entity query
  /// Expected value is 'Activity'.
  final String? kind;
  /// The last time the activity was updated
  final String? lastModifiedTimeUtc;
  /// The name of the resource
  final String? name;
  /// The Activity query definitions
  final ActivityEntityQueriesPropertiesResponseQueryDefinitions? queryDefinitions;
  /// List of the fields of the source entity that are required to run the query
  final List<List<String>>? requiredInputFieldsSets;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The template id this activity was created from
  final String? templateName;
  /// The entity query title
  final String? title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetActivityCustomEntityQueryResult({
    this.azureApiVersion,
    this.content,
    this.createdTimeUtc,
    this.description,
    this.enabled,
    this.entitiesFilter,
    this.etag,
    this.id,
    this.inputEntityType,
    this.kind,
    this.lastModifiedTimeUtc,
    this.name,
    this.queryDefinitions,
    this.requiredInputFieldsSets,
    this.systemData,
    this.templateName,
    this.title,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'content': ?content,
      'createdTimeUtc': ?createdTimeUtc,
      'description': ?description,
      'enabled': ?enabled,
      'entitiesFilter': ?entitiesFilter,
      'etag': ?etag,
      'id': ?id,
      'inputEntityType': ?inputEntityType,
      'kind': ?kind,
      'lastModifiedTimeUtc': ?lastModifiedTimeUtc,
      'name': ?name,
      'queryDefinitions': ?queryDefinitions?.toMap(),
      'requiredInputFieldsSets': ?requiredInputFieldsSets,
      'systemData': ?systemData?.toMap(),
      'templateName': ?templateName,
      'title': ?title,
      'type': ?type,
    };
  }

  factory GetActivityCustomEntityQueryResult.fromMap(Map<String, dynamic> map) {
    return GetActivityCustomEntityQueryResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTimeUtc: (() { final guardedValue = map['createdTimeUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      entitiesFilter: (() { final guardedValue = map['entitiesFilter']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inputEntityType: (() { final guardedValue = map['inputEntityType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedTimeUtc: (() { final guardedValue = map['lastModifiedTimeUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queryDefinitions: (() { final guardedValue = map['queryDefinitions']; if (guardedValue == null) return null; return ActivityEntityQueriesPropertiesResponseQueryDefinitions.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      requiredInputFieldsSets: (() { final guardedValue = map['requiredInputFieldsSets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<List<String>>(guardedValue, (value) => (value as List).cast<String>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
