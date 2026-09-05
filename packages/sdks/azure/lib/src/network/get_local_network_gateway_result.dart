// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_network_gateway_bgp_setting.dart';

/// Result data returned by getLocalNetworkGateway.
class GetLocalNetworkGatewayResult {
  /// The list of string CIDRs representing the address spaces the gateway exposes.
  final List<String>? addressSpaces;
  /// A `bgpSettings` block as defined below containing the Local Network Gateway's BGP speaker settings.
  final List<GetLocalNetworkGatewayBgpSetting>? bgpSettings;
  /// The gateway IP address the Local Network Gateway uses.
  final String? gatewayAddress;
  /// The gateway FQDN the Local Network Gateway uses.
  final String? gatewayFqdn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Local Network Gateway exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Local Network Gateway.
  final Map<String, String>? tags;

  /// Creates a new [GetLocalNetworkGatewayResult].
  /// [addressSpaces] The list of string CIDRs representing the address spaces the gateway exposes.
  /// [bgpSettings] A `bgpSettings` block as defined below containing the Local Network Gateway's BGP speaker settings.
  /// [gatewayAddress] The gateway IP address the Local Network Gateway uses.
  /// [gatewayFqdn] The gateway FQDN the Local Network Gateway uses.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Local Network Gateway exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Local Network Gateway.
  const GetLocalNetworkGatewayResult({
    this.addressSpaces,
    this.bgpSettings,
    this.gatewayAddress,
    this.gatewayFqdn,
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpaces': ?addressSpaces,
      'bgpSettings': ?(() { final guardedValue = bgpSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLocalNetworkGatewayBgpSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'gatewayAddress': ?gatewayAddress,
      'gatewayFqdn': ?gatewayFqdn,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetLocalNetworkGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetLocalNetworkGatewayResult(
      addressSpaces: (() { final guardedValue = map['addressSpaces']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      bgpSettings: (() { final guardedValue = map['bgpSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLocalNetworkGatewayBgpSetting>(guardedValue, (value) => GetLocalNetworkGatewayBgpSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      gatewayAddress: (() { final guardedValue = map['gatewayAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gatewayFqdn: (() { final guardedValue = map['gatewayFqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
