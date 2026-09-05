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
  final String? dataCollectionEndpointId;
  /// One or more `dataFlow` blocks as defined below.
  final List<GetDataCollectionRuleDataFlow>? dataFlows;
  /// A `dataSources` block as defined below. This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint.
  final List<GetDataCollectionRuleDataSource>? dataSources;
  /// The description of the Data Collection Rule.
  final String? description;
  /// Specifies a list of destination names. A `azureMonitorMetrics` data source only allows for stream of kind `Microsoft-InsightsMetrics`.
  final List<GetDataCollectionRuleDestination>? destinations;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetDataCollectionRuleIdentity>? identities;
  final String? immutableId;
  /// The kind of the Data Collection Rule. Possible values are `Linux`, `Windows`,and `AgentDirectToStore`. A rule of kind `Linux` does not allow for `windowsEventLog` data sources. And a rule of kind `Windows` does not allow for `syslog` data sources. If kind is not specified, all kinds of data sources are allowed.
  final String? kind;
  /// The Azure Region where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created.
  final String? location;
  /// The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  final String? name;
  final String? resourceGroupName;
  /// A `streamDeclaration` block as defined below.
  final List<GetDataCollectionRuleStreamDeclaration>? streamDeclarations;
  /// A mapping of tags which should be assigned to the Data Collection Rule.
  final Map<String, String>? tags;

  /// Creates a new [GetDataCollectionRuleResult].
  /// [dataCollectionEndpointId] The resource ID of the Data Collection Endpoint that this rule can be used with.
  /// [dataFlows] One or more `dataFlow` blocks as defined below.
  /// [dataSources] A `dataSources` block as defined below. This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint.
  /// [description] The description of the Data Collection Rule.
  /// [destinations] Specifies a list of destination names. A `azureMonitorMetrics` data source only allows for stream of kind `Microsoft-InsightsMetrics`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [immutableId] Optional.
  /// [kind] The kind of the Data Collection Rule. Possible values are `Linux`, `Windows`,and `AgentDirectToStore`. A rule of kind `Linux` does not allow for `windowsEventLog` data sources. And a rule of kind `Windows` does not allow for `syslog` data sources. If kind is not specified, all kinds of data sources are allowed.
  /// [location] The Azure Region where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created.
  /// [name] The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  /// [resourceGroupName] Optional.
  /// [streamDeclarations] A `streamDeclaration` block as defined below.
  /// [tags] A mapping of tags which should be assigned to the Data Collection Rule.
  const GetDataCollectionRuleResult({
    this.dataCollectionEndpointId,
    this.dataFlows,
    this.dataSources,
    this.description,
    this.destinations,
    this.id,
    this.identities,
    this.immutableId,
    this.kind,
    this.location,
    this.name,
    this.resourceGroupName,
    this.streamDeclarations,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCollectionEndpointId': ?dataCollectionEndpointId,
      'dataFlows': ?(() { final guardedValue = dataFlows; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataCollectionRuleDataFlow, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dataSources': ?(() { final guardedValue = dataSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataCollectionRuleDataSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'destinations': ?(() { final guardedValue = destinations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataCollectionRuleDestination, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataCollectionRuleIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'immutableId': ?immutableId,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'streamDeclarations': ?(() { final guardedValue = streamDeclarations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataCollectionRuleStreamDeclaration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
    };
  }

  factory GetDataCollectionRuleResult.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleResult(
      dataCollectionEndpointId: (() { final guardedValue = map['dataCollectionEndpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataFlows: (() { final guardedValue = map['dataFlows']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataCollectionRuleDataFlow>(guardedValue, (value) => GetDataCollectionRuleDataFlow.fromMap((value as Map).cast<String, dynamic>())); })(),
      dataSources: (() { final guardedValue = map['dataSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataCollectionRuleDataSource>(guardedValue, (value) => GetDataCollectionRuleDataSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataCollectionRuleDestination>(guardedValue, (value) => GetDataCollectionRuleDestination.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataCollectionRuleIdentity>(guardedValue, (value) => GetDataCollectionRuleIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      immutableId: (() { final guardedValue = map['immutableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      streamDeclarations: (() { final guardedValue = map['streamDeclarations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataCollectionRuleStreamDeclaration>(guardedValue, (value) => GetDataCollectionRuleStreamDeclaration.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
