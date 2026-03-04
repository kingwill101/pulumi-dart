// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ha_vpn_gateway_vpn_interface.dart';

/// {@template pulumi_compute_ha_vpn_gateway_ha_vpn_gateway_args_doc}
/// The set of arguments for HaVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_ha_vpn_gateway_ha_vpn_gateway_args_doc}
class HaVpnGatewayArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// The IP family of the gateway IPs for the HA-VPN gateway interfaces. If not specified, IPV4 will be used.
  /// Default value is `IPV4`.
  /// Possible values are: `IPV4`, `IPV6`.
  final pulumi.Input<String>? gatewayIpVersion;

  /// Labels for this resource. These can only be added or modified by the setLabels method.
  /// Each label key/value pair must comply with RFC1035. Label values may be empty.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The network this VPN gateway is accepting traffic for.
  final pulumi.Input<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region this gateway should sit in.
  final pulumi.Input<String>? region;

  /// The stack type for this VPN gateway to identify the IP protocols that are enabled.
  /// If not specified, IPV4_ONLY will be used.
  /// Default value is `IPV4_ONLY`.
  /// Possible values are: `IPV4_ONLY`, `IPV4_IPV6`, `IPV6_ONLY`.
  final pulumi.Input<String>? stackType;

  /// A list of interfaces on this VPN gateway.
  /// Structure is documented below.
  final pulumi.Input<List<HaVpnGatewayVpnInterface>>? vpnInterfaces;

  /// Creates a new [HaVpnGatewayArgs].
  /// [description] An optional description of this resource.
  /// [gatewayIpVersion] The IP family of the gateway IPs for the HA-VPN gateway interfaces. If not specified, IPV4 will be used.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels method.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [network] The network this VPN gateway is accepting traffic for.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region this gateway should sit in.
  /// [stackType] The stack type for this VPN gateway to identify the IP protocols that are enabled.
  /// [vpnInterfaces] A list of interfaces on this VPN gateway.
  HaVpnGatewayArgs({
    this.description,
    this.gatewayIpVersion,
    this.labels,
    this.name,
    required this.network,
    this.project,
    this.region,
    this.stackType,
    this.vpnInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gatewayIpVersion': ?gatewayIpVersion,
      'labels': ?labels,
      'name': ?name,
      'network': network,
      'project': ?project,
      'region': ?region,
      'stackType': ?stackType,
      'vpnInterfaces':
          ?pulumi.Input.mapOptionalInputValue<
            List<HaVpnGatewayVpnInterface>,
            List<Map<String, dynamic>>
          >(
            vpnInterfaces,
            (value) =>
                pulumi.Input.encodeList<
                  HaVpnGatewayVpnInterface,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory HaVpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return HaVpnGatewayArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gatewayIpVersion: (() {
        final guardedValue = map['gatewayIpVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      network: pulumi.Input.fromValue(map['network'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stackType: (() {
        final guardedValue = map['stackType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpnInterfaces: (() {
        final guardedValue = map['vpnInterfaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<HaVpnGatewayVpnInterface>(
            guardedValue,
            (value) => HaVpnGatewayVpnInterface.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
