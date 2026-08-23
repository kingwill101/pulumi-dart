// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_network_gateway_bgp_setting.dart';

/// Result data returned by getLocalNetworkGateway.
class GetLocalNetworkGatewayResult {
  /// The list of string CIDRs representing the address spaces the gateway exposes.
  final List<String> addressSpaces;
  /// A `bgpSettings` block as defined below containing the Local Network Gateway's BGP speaker settings.
  final List<GetLocalNetworkGatewayBgpSetting> bgpSettings;
  /// The gateway IP address the Local Network Gateway uses.
  final String gatewayAddress;
  /// The gateway FQDN the Local Network Gateway uses.
  final String gatewayFqdn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Local Network Gateway exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Local Network Gateway.
  final Map<String, String> tags;

  /// Creates a new [GetLocalNetworkGatewayResult].
  /// [addressSpaces] The list of string CIDRs representing the address spaces the gateway exposes.
  /// [bgpSettings] A `bgpSettings` block as defined below containing the Local Network Gateway's BGP speaker settings.
  /// [gatewayAddress] The gateway IP address the Local Network Gateway uses.
  /// [gatewayFqdn] The gateway FQDN the Local Network Gateway uses.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Local Network Gateway exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Local Network Gateway.
  const GetLocalNetworkGatewayResult({
    required this.addressSpaces,
    required this.bgpSettings,
    required this.gatewayAddress,
    required this.gatewayFqdn,
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpaces': addressSpaces,
      'bgpSettings': pulumi.Input.encodeList<GetLocalNetworkGatewayBgpSetting, Map<String, dynamic>>(bgpSettings, (value) => value.toMap()),
      'gatewayAddress': gatewayAddress,
      'gatewayFqdn': gatewayFqdn,
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetLocalNetworkGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetLocalNetworkGatewayResult(
      addressSpaces: (map['addressSpaces'] as List).cast<String>(),
      bgpSettings: pulumi.Input.decodeList<GetLocalNetworkGatewayBgpSetting>(map['bgpSettings']!, (value) => GetLocalNetworkGatewayBgpSetting.fromMap((value as Map).cast<String, dynamic>())),
      gatewayAddress: map['gatewayAddress'] as String,
      gatewayFqdn: map['gatewayFqdn'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
