// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_configuration_response_public_ipaddress_configuration.dart';
import 'sub_resource_response.dart';

/// Specifies an IP configuration of the network interface.
class IpConfigurationResponse {
  /// Specifies an array of references to backend address pools of application gateways. A node type can reference backend address pools of multiple application gateways. Multiple node types cannot use the same application gateway.
  final pulumi.Input<List<SubResourceResponse>>?
  applicationGatewayBackendAddressPools;

  /// Specifies an array of references to backend address pools of load balancers. A node type can reference backend address pools of one public and one internal load balancer. Multiple node types cannot use the same basic sku load balancer.
  final pulumi.Input<List<SubResourceResponse>>?
  loadBalancerBackendAddressPools;

  /// Specifies an array of references to inbound Nat pools of the load balancers. A node type can reference inbound nat pools of one public and one internal load balancer. Multiple node types cannot use the same basic sku load balancer.
  final pulumi.Input<List<SubResourceResponse>>? loadBalancerInboundNatPools;

  /// Name of the network interface.
  final pulumi.Input<String> name;

  /// Specifies whether the IP configuration's private IP is IPv4 or IPv6. Default is IPv4.
  final pulumi.Input<String>? privateIPAddressVersion;

  /// The public IP address configuration of the network interface.
  final pulumi.Input<IpConfigurationResponsePublicIPAddressConfiguration>?
  publicIPAddressConfiguration;

  /// Specifies the subnet of the network interface.
  final pulumi.Input<SubResourceResponse>? subnet;

  /// Creates a new [IpConfigurationResponse].
  /// [applicationGatewayBackendAddressPools] Specifies an array of references to backend address pools of application gateways. A node type can reference backend address pools of multiple application gateways. Multiple node types cannot use the same application gateway.
  /// [loadBalancerBackendAddressPools] Specifies an array of references to backend address pools of load balancers. A node type can reference backend address pools of one public and one internal load balancer. Multiple node types cannot use the same basic sku load balancer.
  /// [loadBalancerInboundNatPools] Specifies an array of references to inbound Nat pools of the load balancers. A node type can reference inbound nat pools of one public and one internal load balancer. Multiple node types cannot use the same basic sku load balancer.
  /// [name] Name of the network interface.
  /// [privateIPAddressVersion] Specifies whether the IP configuration's private IP is IPv4 or IPv6. Default is IPv4.
  /// [publicIPAddressConfiguration] The public IP address configuration of the network interface.
  /// [subnet] Specifies the subnet of the network interface.
  IpConfigurationResponse({
    this.applicationGatewayBackendAddressPools,
    this.loadBalancerBackendAddressPools,
    this.loadBalancerInboundNatPools,
    required this.name,
    this.privateIPAddressVersion,
    this.publicIPAddressConfiguration,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayBackendAddressPools':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubResourceResponse>,
            List<Map<String, dynamic>>
          >(
            applicationGatewayBackendAddressPools,
            (value) =>
                pulumi.Input.encodeList<
                  SubResourceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'loadBalancerBackendAddressPools':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubResourceResponse>,
            List<Map<String, dynamic>>
          >(
            loadBalancerBackendAddressPools,
            (value) =>
                pulumi.Input.encodeList<
                  SubResourceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'loadBalancerInboundNatPools':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubResourceResponse>,
            List<Map<String, dynamic>>
          >(
            loadBalancerInboundNatPools,
            (value) =>
                pulumi.Input.encodeList<
                  SubResourceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'publicIPAddressConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            IpConfigurationResponsePublicIPAddressConfiguration,
            Map<String, dynamic>
          >(publicIPAddressConfiguration, (value) => value.toMap()),
      'subnet':
          ?pulumi.Input.mapOptionalInputValue<
            SubResourceResponse,
            Map<String, dynamic>
          >(subnet, (value) => value.toMap()),
    };
  }

  factory IpConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return IpConfigurationResponse(
      applicationGatewayBackendAddressPools: (() {
        final guardedValue = map['applicationGatewayBackendAddressPools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubResourceResponse>(
            guardedValue,
            (value) => SubResourceResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      loadBalancerBackendAddressPools: (() {
        final guardedValue = map['loadBalancerBackendAddressPools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubResourceResponse>(
            guardedValue,
            (value) => SubResourceResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      loadBalancerInboundNatPools: (() {
        final guardedValue = map['loadBalancerInboundNatPools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubResourceResponse>(
            guardedValue,
            (value) => SubResourceResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateIPAddressVersion: (() {
        final guardedValue = map['privateIPAddressVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicIPAddressConfiguration: (() {
        final guardedValue = map['publicIPAddressConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IpConfigurationResponsePublicIPAddressConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      subnet: (() {
        final guardedValue = map['subnet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResourceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
