// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ag_configuration_response.dart';
import 'load_balancer_configuration_response.dart';
import 'multi_subnet_ip_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAvailabilityGroupListener.
class GetAvailabilityGroupListenerResult {
  /// Availability Group configuration.
  final AgConfigurationResponse? availabilityGroupConfiguration;
  /// Name of the availability group.
  final String? availabilityGroupName;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Create a default availability group if it does not exist.
  final bool? createDefaultAvailabilityGroupIfNotExist;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// List of load balancer configurations for an availability group listener.
  final List<LoadBalancerConfigurationResponse>? loadBalancerConfigurations;
  /// List of multi subnet IP configurations for an AG listener.
  final List<MultiSubnetIpConfigurationResponse>? multiSubnetIpConfigurations;
  /// The name of the resource
  final String? name;
  /// Listener port.
  final int? port;
  /// Provisioning state to track the async operation status.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAvailabilityGroupListenerResult].
  /// [availabilityGroupConfiguration] Availability Group configuration.
  /// [availabilityGroupName] Name of the availability group.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createDefaultAvailabilityGroupIfNotExist] Create a default availability group if it does not exist.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [loadBalancerConfigurations] List of load balancer configurations for an availability group listener.
  /// [multiSubnetIpConfigurations] List of multi subnet IP configurations for an AG listener.
  /// [name] The name of the resource
  /// [port] Listener port.
  /// [provisioningState] Provisioning state to track the async operation status.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAvailabilityGroupListenerResult({
    this.availabilityGroupConfiguration,
    this.availabilityGroupName,
    this.azureApiVersion,
    this.createDefaultAvailabilityGroupIfNotExist,
    this.id,
    this.loadBalancerConfigurations,
    this.multiSubnetIpConfigurations,
    this.name,
    this.port,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityGroupConfiguration': ?availabilityGroupConfiguration?.toMap(),
      'availabilityGroupName': ?availabilityGroupName,
      'azureApiVersion': ?azureApiVersion,
      'createDefaultAvailabilityGroupIfNotExist': ?createDefaultAvailabilityGroupIfNotExist,
      'id': ?id,
      'loadBalancerConfigurations': ?(() { final guardedValue = loadBalancerConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<LoadBalancerConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'multiSubnetIpConfigurations': ?(() { final guardedValue = multiSubnetIpConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<MultiSubnetIpConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'port': ?port,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetAvailabilityGroupListenerResult.fromMap(Map<String, dynamic> map) {
    return GetAvailabilityGroupListenerResult(
      availabilityGroupConfiguration: (() { final guardedValue = map['availabilityGroupConfiguration']; if (guardedValue == null) return null; return AgConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      availabilityGroupName: (() { final guardedValue = map['availabilityGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createDefaultAvailabilityGroupIfNotExist: (() { final guardedValue = map['createDefaultAvailabilityGroupIfNotExist']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancerConfigurations: (() { final guardedValue = map['loadBalancerConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancerConfigurationResponse>(guardedValue, (value) => LoadBalancerConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      multiSubnetIpConfigurations: (() { final guardedValue = map['multiSubnetIpConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultiSubnetIpConfigurationResponse>(guardedValue, (value) => MultiSubnetIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
