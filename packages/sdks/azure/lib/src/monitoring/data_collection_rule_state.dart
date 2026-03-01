// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_rule_data_flow.dart';
import 'data_collection_rule_data_sources.dart';
import 'data_collection_rule_destinations.dart';
import 'data_collection_rule_identity.dart';
import 'data_collection_rule_stream_declaration.dart';

/// Input properties used for looking up and filtering DataCollectionRule resources.
class DataCollectionRuleState {
  /// The resource ID of the Data Collection Endpoint that this rule can be used with.
  final pulumi.Input<String>? dataCollectionEndpointId;
  /// One or more `data_flow` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataFlow>>? dataFlows;
  /// A `data_sources` block as defined below. This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint.
  final pulumi.Input<DataCollectionRuleDataSources>? dataSources;
  /// The description of the Data Collection Rule.
  final pulumi.Input<String>? description;
  /// A `destinations` block as defined below.
  final pulumi.Input<DataCollectionRuleDestinations>? destinations;
  /// An `identity` block as defined below.
  final pulumi.Input<DataCollectionRuleIdentity>? identity;
  /// The immutable ID of the Data Collection Rule.
  final pulumi.Input<String>? immutableId;
  /// The kind of the Data Collection Rule. Possible values are `Linux`, `Windows`, `AgentDirectToStore` and `WorkspaceTransforms`. A rule of kind `Linux` does not allow for `windows_event_log` data sources. And a rule of kind `Windows` does not allow for `syslog` data sources. If kind is not specified, all kinds of data sources are allowed.
  ///
  /// > **Note:** Once `kind` has been set, changing it forces a new Data Collection Rule to be created.
  final pulumi.Input<String>? kind;
  /// The Azure Region where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Data Collection Rule. Changing this forces a new Data Collection Rule to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `stream_declaration` block as defined below.
  final pulumi.Input<List<DataCollectionRuleStreamDeclaration>>? streamDeclarations;
  /// A mapping of tags which should be assigned to the Data Collection Rule.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DataCollectionRuleState].
  /// [dataCollectionEndpointId] The resource ID of the Data Collection Endpoint that this rule can be used with.
  /// [dataFlows] One or more `data_flow` blocks as defined below.
  /// [dataSources] A `data_sources` block as defined below. This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint.
  /// [description] The description of the Data Collection Rule.
  /// [destinations] A `destinations` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [immutableId] The immutable ID of the Data Collection Rule.
  /// [kind] The kind of the Data Collection Rule. Possible values are `Linux`, `Windows`, `AgentDirectToStore` and `WorkspaceTransforms`. A rule of kind `Linux` does not allow for `windows_event_log` data sources. And a rule of kind `Windows` does not allow for `syslog` data sources. If kind is not specified, all kinds of data sources are allowed.
  /// [location] The Azure Region where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created.
  /// [name] The name which should be used for this Data Collection Rule. Changing this forces a new Data Collection Rule to be created.
  /// [resourceGroupName] The name of the Resource Group where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created.
  /// [streamDeclarations] A `stream_declaration` block as defined below.
  /// [tags] A mapping of tags which should be assigned to the Data Collection Rule.
  DataCollectionRuleState({
    pulumi.Output<String>? dataCollectionEndpointId,
    pulumi.Output<List<DataCollectionRuleDataFlow>>? dataFlows,
    pulumi.Output<DataCollectionRuleDataSources>? dataSources,
    pulumi.Output<String>? description,
    pulumi.Output<DataCollectionRuleDestinations>? destinations,
    pulumi.Output<DataCollectionRuleIdentity>? identity,
    pulumi.Output<String>? immutableId,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<List<DataCollectionRuleStreamDeclaration>>? streamDeclarations,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dataCollectionEndpointId = pulumi.Input.asOptionalInput<String>(dataCollectionEndpointId),
      dataFlows = pulumi.Input.asOptionalInput<List<DataCollectionRuleDataFlow>>(dataFlows),
      dataSources = pulumi.Input.asOptionalInput<DataCollectionRuleDataSources>(dataSources),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinations = pulumi.Input.asOptionalInput<DataCollectionRuleDestinations>(destinations),
      identity = pulumi.Input.asOptionalInput<DataCollectionRuleIdentity>(identity),
      immutableId = pulumi.Input.asOptionalInput<String>(immutableId),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      streamDeclarations = pulumi.Input.asOptionalInput<List<DataCollectionRuleStreamDeclaration>>(streamDeclarations),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCollectionEndpointId': ?dataCollectionEndpointId,
      'dataFlows': ?pulumi.Input.mapOptionalInputValue<List<DataCollectionRuleDataFlow>, List<Map<String, dynamic>>>(dataFlows, (value) => pulumi.Input.encodeList<DataCollectionRuleDataFlow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataSources': ?pulumi.Input.mapOptionalInputValue<DataCollectionRuleDataSources, Map<String, dynamic>>(dataSources, (value) => value.toMap()),
      'description': ?description,
      'destinations': ?pulumi.Input.mapOptionalInputValue<DataCollectionRuleDestinations, Map<String, dynamic>>(destinations, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<DataCollectionRuleIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'immutableId': ?immutableId,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'streamDeclarations': ?pulumi.Input.mapOptionalInputValue<List<DataCollectionRuleStreamDeclaration>, List<Map<String, dynamic>>>(streamDeclarations, (value) => pulumi.Input.encodeList<DataCollectionRuleStreamDeclaration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory DataCollectionRuleState.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleState(
      dataCollectionEndpointId: map['dataCollectionEndpointId'] == null ? null : pulumi.Output.create<String>(map['dataCollectionEndpointId'] as String),
      dataFlows: map['dataFlows'] == null ? null : pulumi.Output.create<List<DataCollectionRuleDataFlow>>(pulumi.Input.decodeList<DataCollectionRuleDataFlow>(map['dataFlows'], (value) => DataCollectionRuleDataFlow.fromMap((value as Map).cast<String, dynamic>()))),
      dataSources: map['dataSources'] == null ? null : pulumi.Output.create<DataCollectionRuleDataSources>(DataCollectionRuleDataSources.fromMap((map['dataSources'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinations: map['destinations'] == null ? null : pulumi.Output.create<DataCollectionRuleDestinations>(DataCollectionRuleDestinations.fromMap((map['destinations'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<DataCollectionRuleIdentity>(DataCollectionRuleIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      immutableId: map['immutableId'] == null ? null : pulumi.Output.create<String>(map['immutableId'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      streamDeclarations: map['streamDeclarations'] == null ? null : pulumi.Output.create<List<DataCollectionRuleStreamDeclaration>>(pulumi.Input.decodeList<DataCollectionRuleStreamDeclaration>(map['streamDeclarations'], (value) => DataCollectionRuleStreamDeclaration.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

