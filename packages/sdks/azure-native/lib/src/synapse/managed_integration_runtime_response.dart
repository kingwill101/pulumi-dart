// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_compute_properties_response.dart';
import 'integration_runtime_customer_virtual_network_response.dart';
import 'integration_runtime_ssis_properties_response.dart';

/// Managed integration runtime, including managed elastic and managed dedicated integration runtimes.
class ManagedIntegrationRuntimeResponse {
  /// The compute resource for managed integration runtime.
  final pulumi.Input<IntegrationRuntimeComputePropertiesResponse>? computeProperties;
  /// The name of virtual network to which Azure-SSIS integration runtime will join
  final pulumi.Input<IntegrationRuntimeCustomerVirtualNetworkResponse>? customerVirtualNetwork;
  /// Integration runtime description.
  final pulumi.Input<String>? description;
  /// The id of the managed virtual network.
  final pulumi.Input<String>? id;
  /// Integration runtime state, only valid for managed dedicated integration runtime.
  final pulumi.Input<String> provisioningState;
  /// The reference name of the managed virtual network
  final pulumi.Input<String>? referenceName;
  /// SSIS properties for managed integration runtime.
  final pulumi.Input<IntegrationRuntimeSsisPropertiesResponse>? ssisProperties;
  /// The type of integration runtime.
  /// Expected value is 'Managed'.
  final pulumi.Input<String> type;

  /// Creates a new [ManagedIntegrationRuntimeResponse].
  /// [computeProperties] The compute resource for managed integration runtime.
  /// [customerVirtualNetwork] The name of virtual network to which Azure-SSIS integration runtime will join
  /// [description] Integration runtime description.
  /// [id] The id of the managed virtual network.
  /// [provisioningState] Integration runtime state, only valid for managed dedicated integration runtime.
  /// [referenceName] The reference name of the managed virtual network
  /// [ssisProperties] SSIS properties for managed integration runtime.
  /// [type] The type of integration runtime.
  ManagedIntegrationRuntimeResponse({
    this.computeProperties,
    this.customerVirtualNetwork,
    this.description,
    this.id,
    required this.provisioningState,
    this.referenceName,
    this.ssisProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeComputePropertiesResponse, Map<String, dynamic>>(computeProperties, (value) => value.toMap()),
      'customerVirtualNetwork': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeCustomerVirtualNetworkResponse, Map<String, dynamic>>(customerVirtualNetwork, (value) => value.toMap()),
      'description': ?description,
      'id': ?id,
      'provisioningState': provisioningState,
      'referenceName': ?referenceName,
      'ssisProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisPropertiesResponse, Map<String, dynamic>>(ssisProperties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ManagedIntegrationRuntimeResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIntegrationRuntimeResponse(
      computeProperties: map['computeProperties'] == null ? null : (IntegrationRuntimeComputePropertiesResponse.fromMap((map['computeProperties'] as Map).cast<String, dynamic>())).input(),
      customerVirtualNetwork: map['customerVirtualNetwork'] == null ? null : (IntegrationRuntimeCustomerVirtualNetworkResponse.fromMap((map['customerVirtualNetwork'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      referenceName: map['referenceName'] == null ? null : (map['referenceName'] as String).input(),
      ssisProperties: map['ssisProperties'] == null ? null : (IntegrationRuntimeSsisPropertiesResponse.fromMap((map['ssisProperties'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

