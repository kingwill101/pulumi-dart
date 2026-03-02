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
  ActivityCustomEntityQueryArgs({
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
      content: map['content'] == null ? null : (map['content'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      entitiesFilter: map['entitiesFilter'] == null ? null : ((map['entitiesFilter'] as Map).cast<String, List<String>>()).input(),
      entityQueryId: map['entityQueryId'] == null ? null : (map['entityQueryId'] as String).input(),
      inputEntityType: map['inputEntityType'] == null ? null : (map['inputEntityType'] as String).input(),
      kind: (map['kind'] as String).input(),
      queryDefinitions: map['queryDefinitions'] == null ? null : (ActivityEntityQueriesPropertiesQueryDefinitions.fromMap((map['queryDefinitions'] as Map).cast<String, dynamic>())).input(),
      requiredInputFieldsSets: map['requiredInputFieldsSets'] == null ? null : ((map['requiredInputFieldsSets'] as List).cast<List<String>>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      templateName: map['templateName'] == null ? null : (map['templateName'] as String).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

