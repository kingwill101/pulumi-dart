// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_gateway_stack_type_compute_v1.dart';
import 'vpn_gateway_vpn_gateway_interface_compute_v1.dart';

/// {@template pulumi_compute_v1_vpn_gateway_compute_v1_args_doc}
/// The set of arguments for VpnGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_vpn_gateway_compute_v1_args_doc}
class VpnGatewayComputeV1Args {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// URL of the network to which this VPN gateway is attached. Provided by the client when the VPN gateway is created.
  final pulumi.Input<String>? network;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The stack type for this VPN gateway to identify the IP protocols that are enabled. Possible values are: IPV4_ONLY, IPV4_IPV6. If not specified, IPV4_ONLY will be used.
  final pulumi.Input<VpnGatewayStackTypeComputeV1>? stackType;
  /// The list of VPN interfaces associated with this VPN gateway.
  final pulumi.Input<List<VpnGatewayVpnGatewayInterfaceComputeV1>>? vpnInterfaces;

  /// Creates a new [VpnGatewayComputeV1Args].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] URL of the network to which this VPN gateway is attached. Provided by the client when the VPN gateway is created.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [stackType] The stack type for this VPN gateway to identify the IP protocols that are enabled. Possible values are: IPV4_ONLY, IPV4_IPV6. If not specified, IPV4_ONLY will be used.
  /// [vpnInterfaces] The list of VPN interfaces associated with this VPN gateway.
  VpnGatewayComputeV1Args({
    this.description,
    this.labels,
    this.name,
    this.network,
    this.project,
    required this.region,
    this.requestId,
    this.stackType,
    this.vpnInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'stackType': ?pulumi.Input.mapOptionalInputValue<VpnGatewayStackTypeComputeV1, String>(stackType, (value) => value.wireValue),
      'vpnInterfaces': ?pulumi.Input.mapOptionalInputValue<List<VpnGatewayVpnGatewayInterfaceComputeV1>, List<Map<String, dynamic>>>(vpnInterfaces, (value) => pulumi.Input.encodeList<VpnGatewayVpnGatewayInterfaceComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VpnGatewayComputeV1Args.fromMap(Map<String, dynamic> map) {
    return VpnGatewayComputeV1Args(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackType: (() { final guardedValue = map['stackType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpnGatewayStackTypeComputeV1.fromValue(guardedValue as String)); })(),
      vpnInterfaces: (() { final guardedValue = map['vpnInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnGatewayVpnGatewayInterfaceComputeV1>(guardedValue, (value) => VpnGatewayVpnGatewayInterfaceComputeV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

