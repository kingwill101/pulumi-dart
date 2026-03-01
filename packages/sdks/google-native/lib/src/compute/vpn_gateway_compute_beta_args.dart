// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_gateway_gateway_ip_version_compute_beta.dart';
import 'vpn_gateway_stack_type_compute_beta.dart';
import 'vpn_gateway_vpn_gateway_interface_compute_beta.dart';

/// {@template pulumi_compute_beta_vpn_gateway_compute_beta_args_doc}
/// The set of arguments for VpnGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_vpn_gateway_compute_beta_args_doc}
class VpnGatewayComputeBetaArgs {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// The IP family of the gateway IPs for the HA-VPN gateway interfaces. If not specified, IPV4 will be used.
  final pulumi.Input<VpnGatewayGatewayIpVersionComputeBeta>? gatewayIpVersion;
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
  final pulumi.Input<VpnGatewayStackTypeComputeBeta>? stackType;
  /// The list of VPN interfaces associated with this VPN gateway.
  final pulumi.Input<List<VpnGatewayVpnGatewayInterfaceComputeBeta>>? vpnInterfaces;

  /// Creates a new [VpnGatewayComputeBetaArgs].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [gatewayIpVersion] The IP family of the gateway IPs for the HA-VPN gateway interfaces. If not specified, IPV4 will be used.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] URL of the network to which this VPN gateway is attached. Provided by the client when the VPN gateway is created.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [stackType] The stack type for this VPN gateway to identify the IP protocols that are enabled. Possible values are: IPV4_ONLY, IPV4_IPV6. If not specified, IPV4_ONLY will be used.
  /// [vpnInterfaces] The list of VPN interfaces associated with this VPN gateway.
  VpnGatewayComputeBetaArgs({
    pulumi.Output<String>? description,
    pulumi.Output<VpnGatewayGatewayIpVersionComputeBeta>? gatewayIpVersion,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    pulumi.Output<String>? requestId,
    pulumi.Output<VpnGatewayStackTypeComputeBeta>? stackType,
    pulumi.Output<List<VpnGatewayVpnGatewayInterfaceComputeBeta>>? vpnInterfaces,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      gatewayIpVersion = pulumi.Input.asOptionalInput<VpnGatewayGatewayIpVersionComputeBeta>(gatewayIpVersion),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      stackType = pulumi.Input.asOptionalInput<VpnGatewayStackTypeComputeBeta>(stackType),
      vpnInterfaces = pulumi.Input.asOptionalInput<List<VpnGatewayVpnGatewayInterfaceComputeBeta>>(vpnInterfaces);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gatewayIpVersion': ?pulumi.Input.mapOptionalInputValue<VpnGatewayGatewayIpVersionComputeBeta, String>(gatewayIpVersion, (value) => value.value),
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'stackType': ?pulumi.Input.mapOptionalInputValue<VpnGatewayStackTypeComputeBeta, String>(stackType, (value) => value.value),
      'vpnInterfaces': ?pulumi.Input.mapOptionalInputValue<List<VpnGatewayVpnGatewayInterfaceComputeBeta>, List<Map<String, dynamic>>>(vpnInterfaces, (value) => pulumi.Input.encodeList<VpnGatewayVpnGatewayInterfaceComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VpnGatewayComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return VpnGatewayComputeBetaArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      gatewayIpVersion: map['gatewayIpVersion'] == null ? null : pulumi.Output.create<VpnGatewayGatewayIpVersionComputeBeta>(VpnGatewayGatewayIpVersionComputeBeta.fromValue(map['gatewayIpVersion'] as String)),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      stackType: map['stackType'] == null ? null : pulumi.Output.create<VpnGatewayStackTypeComputeBeta>(VpnGatewayStackTypeComputeBeta.fromValue(map['stackType'] as String)),
      vpnInterfaces: map['vpnInterfaces'] == null ? null : pulumi.Output.create<List<VpnGatewayVpnGatewayInterfaceComputeBeta>>(pulumi.Input.decodeList<VpnGatewayVpnGatewayInterfaceComputeBeta>(map['vpnInterfaces'], (value) => VpnGatewayVpnGatewayInterfaceComputeBeta.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

