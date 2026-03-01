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
    pulumi.Output<String>? content,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<Map<String, List<String>>>? entitiesFilter,
    pulumi.Output<String>? entityQueryId,
    pulumi.Output<String>? inputEntityType,
    required pulumi.Output<String> kind,
    pulumi.Output<ActivityEntityQueriesPropertiesQueryDefinitions>? queryDefinitions,
    pulumi.Output<List<List<String>>>? requiredInputFieldsSets,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? templateName,
    pulumi.Output<String>? title,
    required pulumi.Output<String> workspaceName,
  }) :
      content = pulumi.Input.asOptionalInput<String>(content),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      entitiesFilter = pulumi.Input.asOptionalInput<Map<String, List<String>>>(entitiesFilter),
      entityQueryId = pulumi.Input.asOptionalInput<String>(entityQueryId),
      inputEntityType = pulumi.Input.asOptionalInput<String>(inputEntityType),
      kind = pulumi.Input.asInput<String>(kind),
      queryDefinitions = pulumi.Input.asOptionalInput<ActivityEntityQueriesPropertiesQueryDefinitions>(queryDefinitions),
      requiredInputFieldsSets = pulumi.Input.asOptionalInput<List<List<String>>>(requiredInputFieldsSets),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      templateName = pulumi.Input.asOptionalInput<String>(templateName),
      title = pulumi.Input.asOptionalInput<String>(title),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      entitiesFilter: map['entitiesFilter'] == null ? null : pulumi.Output.create<Map<String, List<String>>>((map['entitiesFilter'] as Map).cast<String, List<String>>()),
      entityQueryId: map['entityQueryId'] == null ? null : pulumi.Output.create<String>(map['entityQueryId'] as String),
      inputEntityType: map['inputEntityType'] == null ? null : pulumi.Output.create<String>(map['inputEntityType'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      queryDefinitions: map['queryDefinitions'] == null ? null : pulumi.Output.create<ActivityEntityQueriesPropertiesQueryDefinitions>(ActivityEntityQueriesPropertiesQueryDefinitions.fromMap((map['queryDefinitions'] as Map).cast<String, dynamic>())),
      requiredInputFieldsSets: map['requiredInputFieldsSets'] == null ? null : pulumi.Output.create<List<List<String>>>((map['requiredInputFieldsSets'] as List).cast<List<String>>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      templateName: map['templateName'] == null ? null : pulumi.Output.create<String>(map['templateName'] as String),
      title: map['title'] == null ? null : pulumi.Output.create<String>(map['title'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

