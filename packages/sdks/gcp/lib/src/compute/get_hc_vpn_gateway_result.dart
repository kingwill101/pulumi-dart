// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hc_vpn_gateway_param.dart';
import 'get_hc_vpn_gateway_vpn_interface.dart';

/// Result data returned by getHcVpnGateway.
class GetHcVpnGatewayResult {
  final String deletionPolicy;
  final String description;
  final Map<String, String> effectiveLabels;
  final String gatewayIpVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String labelFingerprint;
  final Map<String, String> labels;
  final String name;
  final String network;
  final List<GetHcVpnGatewayParam> params;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String? region;
  final String selfLink;
  final String stackType;
  final List<GetHcVpnGatewayVpnInterface> vpnInterfaces;

  /// Creates a new [GetHcVpnGatewayResult].
  /// [deletionPolicy] Required.
  /// [description] Required.
  /// [effectiveLabels] Required.
  /// [gatewayIpVersion] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labelFingerprint] Required.
  /// [labels] Required.
  /// [name] Required.
  /// [network] Required.
  /// [params] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [region] Optional.
  /// [selfLink] Required.
  /// [stackType] Required.
  /// [vpnInterfaces] Required.
  const GetHcVpnGatewayResult({
    required this.deletionPolicy,
    required this.description,
    required this.effectiveLabels,
    required this.gatewayIpVersion,
    required this.id,
    required this.labelFingerprint,
    required this.labels,
    required this.name,
    required this.network,
    required this.params,
    this.project,
    required this.pulumiLabels,
    this.region,
    required this.selfLink,
    required this.stackType,
    required this.vpnInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': deletionPolicy,
      'description': description,
      'effectiveLabels': effectiveLabels,
      'gatewayIpVersion': gatewayIpVersion,
      'id': id,
      'labelFingerprint': labelFingerprint,
      'labels': labels,
      'name': name,
      'network': network,
      'params': pulumi.Input.encodeList<GetHcVpnGatewayParam, Map<String, dynamic>>(params, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'region': ?region,
      'selfLink': selfLink,
      'stackType': stackType,
      'vpnInterfaces': pulumi.Input.encodeList<GetHcVpnGatewayVpnInterface, Map<String, dynamic>>(vpnInterfaces, (value) => value.toMap()),
    };
  }

  factory GetHcVpnGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetHcVpnGatewayResult(
      deletionPolicy: map['deletionPolicy'] as String,
      description: map['description'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      gatewayIpVersion: map['gatewayIpVersion'] as String,
      id: map['id'] as String,
      labelFingerprint: map['labelFingerprint'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      network: map['network'] as String,
      params: pulumi.Input.decodeList<GetHcVpnGatewayParam>(map['params']!, (value) => GetHcVpnGatewayParam.fromMap((value as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: map['selfLink'] as String,
      stackType: map['stackType'] as String,
      vpnInterfaces: pulumi.Input.decodeList<GetHcVpnGatewayVpnInterface>(map['vpnInterfaces']!, (value) => GetHcVpnGatewayVpnInterface.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
