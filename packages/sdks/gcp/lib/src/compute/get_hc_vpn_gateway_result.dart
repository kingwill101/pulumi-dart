// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hc_vpn_gateway_param.dart';
import 'get_hc_vpn_gateway_vpn_interface.dart';

/// Result data returned by getHcVpnGateway.
class GetHcVpnGatewayResult {
  final String? deletionPolicy;
  final String? description;
  final Map<String, String>? effectiveLabels;
  final String? gatewayIpVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? labelFingerprint;
  final Map<String, String>? labels;
  final String? name;
  final String? network;
  final List<GetHcVpnGatewayParam>? params;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? region;
  final String? selfLink;
  final String? stackType;
  final List<GetHcVpnGatewayVpnInterface>? vpnInterfaces;

  /// Creates a new [GetHcVpnGatewayResult].
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [effectiveLabels] Optional.
  /// [gatewayIpVersion] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labelFingerprint] Optional.
  /// [labels] Optional.
  /// [name] Optional.
  /// [network] Optional.
  /// [params] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [region] Optional.
  /// [selfLink] Optional.
  /// [stackType] Optional.
  /// [vpnInterfaces] Optional.
  const GetHcVpnGatewayResult({
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.gatewayIpVersion,
    this.id,
    this.labelFingerprint,
    this.labels,
    this.name,
    this.network,
    this.params,
    this.project,
    this.pulumiLabels,
    this.region,
    this.selfLink,
    this.stackType,
    this.vpnInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'gatewayIpVersion': ?gatewayIpVersion,
      'id': ?id,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'params': ?(() { final guardedValue = params; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetHcVpnGatewayParam, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'selfLink': ?selfLink,
      'stackType': ?stackType,
      'vpnInterfaces': ?(() { final guardedValue = vpnInterfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetHcVpnGatewayVpnInterface, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetHcVpnGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetHcVpnGatewayResult(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      gatewayIpVersion: (() { final guardedValue = map['gatewayIpVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labelFingerprint: (() { final guardedValue = map['labelFingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetHcVpnGatewayParam>(guardedValue, (value) => GetHcVpnGatewayParam.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stackType: (() { final guardedValue = map['stackType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpnInterfaces: (() { final guardedValue = map['vpnInterfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetHcVpnGatewayVpnInterface>(guardedValue, (value) => GetHcVpnGatewayVpnInterface.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
