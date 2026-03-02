// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_data_flow_properties.dart';
import 'integration_runtime_vnet_properties.dart';

/// The compute resource properties for managed integration runtime.
class IntegrationRuntimeComputeProperties {
  /// Data flow properties for managed integration runtime.
  final pulumi.Input<IntegrationRuntimeDataFlowProperties>? dataFlowProperties;
  /// The location for managed integration runtime. The supported regions could be found on https://docs.microsoft.com/en-us/azure/data-factory/data-factory-data-movement-activities
  final pulumi.Input<String>? location;
  /// Maximum parallel executions count per node for managed integration runtime.
  final pulumi.Input<int>? maxParallelExecutionsPerNode;
  /// The node size requirement to managed integration runtime.
  final pulumi.Input<String>? nodeSize;
  /// The required number of nodes for managed integration runtime.
  final pulumi.Input<int>? numberOfNodes;
  /// VNet properties for managed integration runtime.
  final pulumi.Input<IntegrationRuntimeVNetProperties>? vNetProperties;

  /// Creates a new [IntegrationRuntimeComputeProperties].
  /// [dataFlowProperties] Data flow properties for managed integration runtime.
  /// [location] The location for managed integration runtime. The supported regions could be found on https://docs.microsoft.com/en-us/azure/data-factory/data-factory-data-movement-activities
  /// [maxParallelExecutionsPerNode] Maximum parallel executions count per node for managed integration runtime.
  /// [nodeSize] The node size requirement to managed integration runtime.
  /// [numberOfNodes] The required number of nodes for managed integration runtime.
  /// [vNetProperties] VNet properties for managed integration runtime.
  IntegrationRuntimeComputeProperties({
    this.dataFlowProperties,
    this.location,
    this.maxParallelExecutionsPerNode,
    this.nodeSize,
    this.numberOfNodes,
    this.vNetProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFlowProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeDataFlowProperties, Map<String, dynamic>>(dataFlowProperties, (value) => value.toMap()),
      'location': ?location,
      'maxParallelExecutionsPerNode': ?maxParallelExecutionsPerNode,
      'nodeSize': ?nodeSize,
      'numberOfNodes': ?numberOfNodes,
      'vNetProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeVNetProperties, Map<String, dynamic>>(vNetProperties, (value) => value.toMap()),
    };
  }

  factory IntegrationRuntimeComputeProperties.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeComputeProperties(
      dataFlowProperties: map['dataFlowProperties'] == null ? null : (IntegrationRuntimeDataFlowProperties.fromMap((map['dataFlowProperties'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maxParallelExecutionsPerNode: map['maxParallelExecutionsPerNode'] == null ? null : (map['maxParallelExecutionsPerNode'] as int).input(),
      nodeSize: map['nodeSize'] == null ? null : (map['nodeSize'] as String).input(),
      numberOfNodes: map['numberOfNodes'] == null ? null : (map['numberOfNodes'] as int).input(),
      vNetProperties: map['vNetProperties'] == null ? null : (IntegrationRuntimeVNetProperties.fromMap((map['vNetProperties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

