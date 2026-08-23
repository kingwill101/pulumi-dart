// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the frontend configurations for the node type.
class FrontendConfigurationResponse {
  /// The resource Id of application gateway backend address pool. The format of the resource Id is '/subscriptions/&lt;subscriptionId&gt;/resourceGroups/&lt;resourceGroupName&gt;/providers/Microsoft.Network/applicationGateways/&lt;applicationGatewayName&gt;/backendAddressPools/&lt;backendAddressPoolName&gt;'.
  final pulumi.Input<String>? applicationGatewayBackendAddressPoolId;
  /// The IP address type of this frontend configuration. If omitted the default value is IPv4.
  final pulumi.Input<String>? ipAddressType;
  /// The resource Id of the Load Balancer backend address pool that the VM instances of the node type are associated with. The format of the resource Id is '/subscriptions/&lt;subscriptionId&gt;/resourceGroups/&lt;resourceGroupName&gt;/providers/Microsoft.Network/loadBalancers/&lt;loadBalancerName&gt;/backendAddressPools/&lt;backendAddressPoolName&gt;'.
  final pulumi.Input<String>? loadBalancerBackendAddressPoolId;
  /// The resource Id of the Load Balancer inbound NAT pool that the VM instances of the node type are associated with. The format of the resource Id is '/subscriptions/&lt;subscriptionId&gt;/resourceGroups/&lt;resourceGroupName&gt;/providers/Microsoft.Network/loadBalancers/&lt;loadBalancerName&gt;/inboundNatPools/&lt;inboundNatPoolName&gt;'.
  final pulumi.Input<String>? loadBalancerInboundNatPoolId;

  /// Creates a new [FrontendConfigurationResponse].
  /// [applicationGatewayBackendAddressPoolId] The resource Id of application gateway backend address pool. The format of the resource Id is '/subscriptions/&lt;subscriptionId&gt;/resourceGroups/&lt;resourceGroupName&gt;/providers/Microsoft.Network/applicationGateways/&lt;applicationGatewayName&gt;/backendAddressPools/&lt;backendAddressPoolName&gt;'.
  /// [ipAddressType] The IP address type of this frontend configuration. If omitted the default value is IPv4.
  /// [loadBalancerBackendAddressPoolId] The resource Id of the Load Balancer backend address pool that the VM instances of the node type are associated with. The format of the resource Id is '/subscriptions/&lt;subscriptionId&gt;/resourceGroups/&lt;resourceGroupName&gt;/providers/Microsoft.Network/loadBalancers/&lt;loadBalancerName&gt;/backendAddressPools/&lt;backendAddressPoolName&gt;'.
  /// [loadBalancerInboundNatPoolId] The resource Id of the Load Balancer inbound NAT pool that the VM instances of the node type are associated with. The format of the resource Id is '/subscriptions/&lt;subscriptionId&gt;/resourceGroups/&lt;resourceGroupName&gt;/providers/Microsoft.Network/loadBalancers/&lt;loadBalancerName&gt;/inboundNatPools/&lt;inboundNatPoolName&gt;'.
  const FrontendConfigurationResponse({
    this.applicationGatewayBackendAddressPoolId,
    this.ipAddressType,
    this.loadBalancerBackendAddressPoolId,
    this.loadBalancerInboundNatPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayBackendAddressPoolId': ?applicationGatewayBackendAddressPoolId,
      'ipAddressType': ?ipAddressType,
      'loadBalancerBackendAddressPoolId': ?loadBalancerBackendAddressPoolId,
      'loadBalancerInboundNatPoolId': ?loadBalancerInboundNatPoolId,
    };
  }

  factory FrontendConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FrontendConfigurationResponse(
      applicationGatewayBackendAddressPoolId: (() { final guardedValue = map['applicationGatewayBackendAddressPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerBackendAddressPoolId: (() { final guardedValue = map['loadBalancerBackendAddressPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerInboundNatPoolId: (() { final guardedValue = map['loadBalancerInboundNatPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
