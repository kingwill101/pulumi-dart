// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_data_flow_properties_response.dart';
import 'integration_runtime_vnet_properties_response.dart';

/// The compute resource properties for managed integration runtime.
class IntegrationRuntimeComputePropertiesResponse {
  /// Data flow properties for managed integration runtime.
  final pulumi.Input<IntegrationRuntimeDataFlowPropertiesResponse>? dataFlowProperties;
  /// The location for managed integration runtime. The supported regions could be found on https://docs.microsoft.com/en-us/azure/data-factory/data-factory-data-movement-activities
  final pulumi.Input<String>? location;
  /// Maximum parallel executions count per node for managed integration runtime.
  final pulumi.Input<int>? maxParallelExecutionsPerNode;
  /// The node size requirement to managed integration runtime.
  final pulumi.Input<String>? nodeSize;
  /// The required number of nodes for managed integration runtime.
  final pulumi.Input<int>? numberOfNodes;
  /// VNet properties for managed integration runtime.
  final pulumi.Input<IntegrationRuntimeVNetPropertiesResponse>? vNetProperties;

  /// Creates a new [IntegrationRuntimeComputePropertiesResponse].
  /// [dataFlowProperties] Data flow properties for managed integration runtime.
  /// [location] The location for managed integration runtime. The supported regions could be found on https://docs.microsoft.com/en-us/azure/data-factory/data-factory-data-movement-activities
  /// [maxParallelExecutionsPerNode] Maximum parallel executions count per node for managed integration runtime.
  /// [nodeSize] The node size requirement to managed integration runtime.
  /// [numberOfNodes] The required number of nodes for managed integration runtime.
  /// [vNetProperties] VNet properties for managed integration runtime.
  IntegrationRuntimeComputePropertiesResponse({
    this.dataFlowProperties,
    this.location,
    this.maxParallelExecutionsPerNode,
    this.nodeSize,
    this.numberOfNodes,
    this.vNetProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFlowProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeDataFlowPropertiesResponse, Map<String, dynamic>>(dataFlowProperties, (value) => value.toMap()),
      'location': ?location,
      'maxParallelExecutionsPerNode': ?maxParallelExecutionsPerNode,
      'nodeSize': ?nodeSize,
      'numberOfNodes': ?numberOfNodes,
      'vNetProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeVNetPropertiesResponse, Map<String, dynamic>>(vNetProperties, (value) => value.toMap()),
    };
  }

  factory IntegrationRuntimeComputePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeComputePropertiesResponse(
      dataFlowProperties: map['dataFlowProperties'] == null ? null : (IntegrationRuntimeDataFlowPropertiesResponse.fromMap((map['dataFlowProperties'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maxParallelExecutionsPerNode: map['maxParallelExecutionsPerNode'] == null ? null : (map['maxParallelExecutionsPerNode'] as int).input(),
      nodeSize: map['nodeSize'] == null ? null : (map['nodeSize'] as String).input(),
      numberOfNodes: map['numberOfNodes'] == null ? null : (map['numberOfNodes'] as int).input(),
      vNetProperties: map['vNetProperties'] == null ? null : (IntegrationRuntimeVNetPropertiesResponse.fromMap((map['vNetProperties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

