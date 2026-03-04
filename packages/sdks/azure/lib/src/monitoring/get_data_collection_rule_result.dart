// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_collection_rule_data_flow.dart';
import 'get_data_collection_rule_data_source.dart';
import 'get_data_collection_rule_destination.dart';
import 'get_data_collection_rule_identity.dart';
import 'get_data_collection_rule_stream_declaration.dart';

/// Result data returned by getDataCollectionRule.
class GetDataCollectionRuleResult {
  /// The resource ID of the Data Collection Endpoint that this rule can be used with.
  final String dataCollectionEndpointId;

  /// One or more `data_flow` blocks as defined below.
  final List<GetDataCollectionRuleDataFlow> dataFlows;

  /// A `data_sources` block as defined below. This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint.
  final List<GetDataCollectionRuleDataSource> dataSources;

  /// The description of the Data Collection Rule.
  final String description;

  /// Specifies a list of destination names. A `azure_monitor_metrics` data source only allows for stream of kind `Microsoft-InsightsMetrics`.
  final List<GetDataCollectionRuleDestination> destinations;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// An `identity` block as defined below.
  final List<GetDataCollectionRuleIdentity> identities;
  final String immutableId;

  /// The kind of the Data Collection Rule. Possible values are `Linux`, `Windows`,and `AgentDirectToStore`. A rule of kind `Linux` does not allow for `windows_event_log` data sources. And a rule of kind `Windows` does not allow for `syslog` data sources. If kind is not specified, all kinds of data sources are allowed.
  final String kind;

  /// The Azure Region where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created.
  final String location;

  /// The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  final String name;
  final String resourceGroupName;

  /// A `stream_declaration` block as defined below.
  final List<GetDataCollectionRuleStreamDeclaration> streamDeclarations;

  /// A mapping of tags which should be assigned to the Data Collection Rule.
  final Map<String, String> tags;

  /// Creates a new [GetDataCollectionRuleResult].
  /// [dataCollectionEndpointId] The resource ID of the Data Collection Endpoint that this rule can be used with.
  /// [dataFlows] One or more `data_flow` blocks as defined below.
  /// [dataSources] A `data_sources` block as defined below. This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint.
  /// [description] The description of the Data Collection Rule.
  /// [destinations] Specifies a list of destination names. A `azure_monitor_metrics` data source only allows for stream of kind `Microsoft-InsightsMetrics`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [immutableId] Required.
  /// [kind] The kind of the Data Collection Rule. Possible values are `Linux`, `Windows`,and `AgentDirectToStore`. A rule of kind `Linux` does not allow for `windows_event_log` data sources. And a rule of kind `Windows` does not allow for `syslog` data sources. If kind is not specified, all kinds of data sources are allowed.
  /// [location] The Azure Region where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created.
  /// [name] The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  /// [resourceGroupName] Required.
  /// [streamDeclarations] A `stream_declaration` block as defined below.
  /// [tags] A mapping of tags which should be assigned to the Data Collection Rule.
  GetDataCollectionRuleResult({
    required this.dataCollectionEndpointId,
    required this.dataFlows,
    required this.dataSources,
    required this.description,
    required this.destinations,
    required this.id,
    required this.identities,
    required this.immutableId,
    required this.kind,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.streamDeclarations,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCollectionEndpointId': dataCollectionEndpointId,
      'dataFlows':
          pulumi.Input.encodeList<
            GetDataCollectionRuleDataFlow,
            Map<String, dynamic>
          >(dataFlows, (value) => value.toMap()),
      'dataSources':
          pulumi.Input.encodeList<
            GetDataCollectionRuleDataSource,
            Map<String, dynamic>
          >(dataSources, (value) => value.toMap()),
      'description': description,
      'destinations':
          pulumi.Input.encodeList<
            GetDataCollectionRuleDestination,
            Map<String, dynamic>
          >(destinations, (value) => value.toMap()),
      'id': id,
      'identities':
          pulumi.Input.encodeList<
            GetDataCollectionRuleIdentity,
            Map<String, dynamic>
          >(identities, (value) => value.toMap()),
      'immutableId': immutableId,
      'kind': kind,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'streamDeclarations':
          pulumi.Input.encodeList<
            GetDataCollectionRuleStreamDeclaration,
            Map<String, dynamic>
          >(streamDeclarations, (value) => value.toMap()),
      'tags': tags,
    };
  }

  factory GetDataCollectionRuleResult.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleResult(
      dataCollectionEndpointId: map['dataCollectionEndpointId'] as String,
      dataFlows: pulumi.Input.decodeList<GetDataCollectionRuleDataFlow>(
        map['dataFlows']!,
        (value) => GetDataCollectionRuleDataFlow.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      dataSources: pulumi.Input.decodeList<GetDataCollectionRuleDataSource>(
        map['dataSources']!,
        (value) => GetDataCollectionRuleDataSource.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      description: map['description'] as String,
      destinations: pulumi.Input.decodeList<GetDataCollectionRuleDestination>(
        map['destinations']!,
        (value) => GetDataCollectionRuleDestination.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetDataCollectionRuleIdentity>(
        map['identities']!,
        (value) => GetDataCollectionRuleIdentity.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      immutableId: map['immutableId'] as String,
      kind: map['kind'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      streamDeclarations:
          pulumi.Input.decodeList<GetDataCollectionRuleStreamDeclaration>(
            map['streamDeclarations']!,
            (value) => GetDataCollectionRuleStreamDeclaration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
