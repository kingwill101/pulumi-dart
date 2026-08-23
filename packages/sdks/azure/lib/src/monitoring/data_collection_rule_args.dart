// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_rule_data_flow.dart';
import 'data_collection_rule_data_sources.dart';
import 'data_collection_rule_destinations.dart';
import 'data_collection_rule_identity.dart';
import 'data_collection_rule_stream_declaration.dart';

/// {@template pulumi_monitoring_data_collection_rule_data_collection_rule_args_doc}
/// The set of arguments for DataCollectionRule.
/// {@endtemplate}
/// {@macro pulumi_monitoring_data_collection_rule_data_collection_rule_args_doc}
class DataCollectionRuleArgs {
  /// The resource ID of the Data Collection Endpoint that this rule can be used with.
  final pulumi.Input<String>? dataCollectionEndpointId;
  /// One or more `dataFlow` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataFlow>> dataFlows;
  /// A `dataSources` block as defined below. This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint.
  final pulumi.Input<DataCollectionRuleDataSources>? dataSources;
  /// The description of the Data Collection Rule.
  final pulumi.Input<String>? description;
  /// A `destinations` block as defined below.
  final pulumi.Input<DataCollectionRuleDestinations> destinations;
  /// An `identity` block as defined below.
  final pulumi.Input<DataCollectionRuleIdentity>? identity;
  /// The kind of the Data Collection Rule. Possible values are `Linux`, `Windows`, `AgentDirectToStore` and `WorkspaceTransforms`. A rule of kind `Linux` does not allow for `windowsEventLog` data sources. And a rule of kind `Windows` does not allow for `syslog` data sources. If kind is not specified, all kinds of data sources are allowed.
  ///
  /// &gt; **Note:** Once `kind` has been set, changing it forces a new Data Collection Rule to be created.
  final pulumi.Input<String>? kind;
  /// The Azure Region where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Data Collection Rule. Changing this forces a new Data Collection Rule to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `streamDeclaration` block as defined below.
  final pulumi.Input<List<DataCollectionRuleStreamDeclaration>>? streamDeclarations;
  /// A mapping of tags which should be assigned to the Data Collection Rule.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DataCollectionRuleArgs].
  /// [dataCollectionEndpointId] The resource ID of the Data Collection Endpoint that this rule can be used with.
  /// [dataFlows] One or more `dataFlow` blocks as defined below.
  /// [dataSources] A `dataSources` block as defined below. This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint.
  /// [description] The description of the Data Collection Rule.
  /// [destinations] A `destinations` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [kind] The kind of the Data Collection Rule. Possible values are `Linux`, `Windows`, `AgentDirectToStore` and `WorkspaceTransforms`. A rule of kind `Linux` does not allow for `windowsEventLog` data sources. And a rule of kind `Windows` does not allow for `syslog` data sources. If kind is not specified, all kinds of data sources are allowed.
  /// [location] The Azure Region where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created.
  /// [name] The name which should be used for this Data Collection Rule. Changing this forces a new Data Collection Rule to be created.
  /// [resourceGroupName] The name of the Resource Group where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created.
  /// [streamDeclarations] A `streamDeclaration` block as defined below.
  /// [tags] A mapping of tags which should be assigned to the Data Collection Rule.
  const DataCollectionRuleArgs({
    this.dataCollectionEndpointId,
    required this.dataFlows,
    this.dataSources,
    this.description,
    required this.destinations,
    this.identity,
    this.kind,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.streamDeclarations,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCollectionEndpointId': ?dataCollectionEndpointId,
      'dataFlows': pulumi.Input.mapInputValue<List<DataCollectionRuleDataFlow>, List<Map<String, dynamic>>>(dataFlows, (value) => pulumi.Input.encodeList<DataCollectionRuleDataFlow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataSources': ?pulumi.Input.mapOptionalInputValue<DataCollectionRuleDataSources, Map<String, dynamic>>(dataSources, (value) => value.toMap()),
      'description': ?description,
      'destinations': pulumi.Input.mapInputValue<DataCollectionRuleDestinations, Map<String, dynamic>>(destinations, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<DataCollectionRuleIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'streamDeclarations': ?pulumi.Input.mapOptionalInputValue<List<DataCollectionRuleStreamDeclaration>, List<Map<String, dynamic>>>(streamDeclarations, (value) => pulumi.Input.encodeList<DataCollectionRuleStreamDeclaration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory DataCollectionRuleArgs.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleArgs(
      dataCollectionEndpointId: (() { final guardedValue = map['dataCollectionEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFlows: pulumi.Input.fromValue(pulumi.Input.decodeList<DataCollectionRuleDataFlow>(map['dataFlows']!, (value) => DataCollectionRuleDataFlow.fromMap((value as Map).cast<String, dynamic>()))),
      dataSources: (() { final guardedValue = map['dataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataCollectionRuleDataSources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinations: pulumi.Input.fromValue(DataCollectionRuleDestinations.fromMap((map['destinations']! as Map).cast<String, dynamic>())),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataCollectionRuleIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      streamDeclarations: (() { final guardedValue = map['streamDeclarations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataCollectionRuleStreamDeclaration>(guardedValue, (value) => DataCollectionRuleStreamDeclaration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
