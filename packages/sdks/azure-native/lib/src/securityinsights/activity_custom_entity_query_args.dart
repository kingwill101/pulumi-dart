// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_entity_queries_properties_query_definitions.dart';

/// {@template pulumi_securityinsights_activity_custom_entity_query_args_doc}
/// The set of arguments for ActivityCustomEntityQuery.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_activity_custom_entity_query_args_doc}
class ActivityCustomEntityQueryArgs {
  /// The entity query content to display in timeline
  final pulumi.Input<String>? content;
  /// The entity query description
  final pulumi.Input<String>? description;
  /// Determines whether this activity is enabled or disabled.
  final pulumi.Input<bool>? enabled;
  /// The query applied only to entities matching to all filters
  final pulumi.Input<Map<String, List<String>>>? entitiesFilter;
  /// entity query ID
  final pulumi.Input<String>? entityQueryId;
  /// The type of the query's source entity
  final pulumi.Input<String>? inputEntityType;
  /// The kind of the entity query that supports put request.
  /// Expected value is 'Activity'.
  final pulumi.Input<String> kind;
  /// The Activity query definitions
  final pulumi.Input<ActivityEntityQueriesPropertiesQueryDefinitions>? queryDefinitions;
  /// List of the fields of the source entity that are required to run the query
  final pulumi.Input<List<List<String>>>? requiredInputFieldsSets;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The template id this activity was created from
  final pulumi.Input<String>? templateName;
  /// The entity query title
  final pulumi.Input<String>? title;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ActivityCustomEntityQueryArgs].
  /// [content] The entity query content to display in timeline
  /// [description] The entity query description
  /// [enabled] Determines whether this activity is enabled or disabled.
  /// [entitiesFilter] The query applied only to entities matching to all filters
  /// [entityQueryId] entity query ID
  /// [inputEntityType] The type of the query's source entity
  /// [kind] The kind of the entity query that supports put request.
  /// [queryDefinitions] The Activity query definitions
  /// [requiredInputFieldsSets] List of the fields of the source entity that are required to run the query
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [templateName] The template id this activity was created from
  /// [title] The entity query title
  /// [workspaceName] The name of the workspace.
  const ActivityCustomEntityQueryArgs({
    this.content,
    this.description,
    this.enabled,
    this.entitiesFilter,
    this.entityQueryId,
    this.inputEntityType,
    required this.kind,
    this.queryDefinitions,
    this.requiredInputFieldsSets,
    required this.resourceGroupName,
    this.templateName,
    this.title,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'description': ?description,
      'enabled': ?enabled,
      'entitiesFilter': ?entitiesFilter,
      'entityQueryId': ?entityQueryId,
      'inputEntityType': ?inputEntityType,
      'kind': kind,
      'queryDefinitions': ?pulumi.Input.mapOptionalInputValue<ActivityEntityQueriesPropertiesQueryDefinitions, Map<String, dynamic>>(queryDefinitions, (value) => value.toMap()),
      'requiredInputFieldsSets': ?requiredInputFieldsSets,
      'resourceGroupName': resourceGroupName,
      'templateName': ?templateName,
      'title': ?title,
      'workspaceName': workspaceName,
    };
  }

  factory ActivityCustomEntityQueryArgs.fromMap(Map<String, dynamic> map) {
    return ActivityCustomEntityQueryArgs(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      entitiesFilter: (() { final guardedValue = map['entitiesFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, List<String>>()); })(),
      entityQueryId: (() { final guardedValue = map['entityQueryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputEntityType: (() { final guardedValue = map['inputEntityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      queryDefinitions: (() { final guardedValue = map['queryDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActivityEntityQueriesPropertiesQueryDefinitions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requiredInputFieldsSets: (() { final guardedValue = map['requiredInputFieldsSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<List<String>>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

