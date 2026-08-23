// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_gateway_bgp_setting.dart';
import 'get_vpn_gateway_ip_configuration.dart';

/// Result data returned by getVpnGateway.
class GetVpnGatewayResult {
  /// A `bgpSettings` block as defined below.
  final List<GetVpnGatewayBgpSetting> bgpSettings;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `ipConfiguration` block as defined below.
  final List<GetVpnGatewayIpConfiguration> ipConfigurations;
  /// The Azure location where the VPN Gateway exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// The Scale Unit of this VPN Gateway.
  final int scaleUnit;
  /// A mapping of tags assigned to the VPN Gateway.
  final Map<String, String> tags;
  /// The ID of the Virtual Hub within which this VPN Gateway has been created.
  final String virtualHubId;

  /// Creates a new [GetVpnGatewayResult].
  /// [bgpSettings] A `bgpSettings` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipConfigurations] An `ipConfiguration` block as defined below.
  /// [location] The Azure location where the VPN Gateway exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [scaleUnit] The Scale Unit of this VPN Gateway.
  /// [tags] A mapping of tags assigned to the VPN Gateway.
  /// [virtualHubId] The ID of the Virtual Hub within which this VPN Gateway has been created.
  const GetVpnGatewayResult({
    required this.bgpSettings,
    required this.id,
    required this.ipConfigurations,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.scaleUnit,
    required this.tags,
    required this.virtualHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpSettings': pulumi.Input.encodeList<GetVpnGatewayBgpSetting, Map<String, dynamic>>(bgpSettings, (value) => value.toMap()),
      'id': id,
      'ipConfigurations': pulumi.Input.encodeList<GetVpnGatewayIpConfiguration, Map<String, dynamic>>(ipConfigurations, (value) => value.toMap()),
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'scaleUnit': scaleUnit,
      'tags': tags,
      'virtualHubId': virtualHubId,
    };
  }

  factory GetVpnGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayResult(
      bgpSettings: pulumi.Input.decodeList<GetVpnGatewayBgpSetting>(map['bgpSettings']!, (value) => GetVpnGatewayBgpSetting.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ipConfigurations: pulumi.Input.decodeList<GetVpnGatewayIpConfiguration>(map['ipConfigurations']!, (value) => GetVpnGatewayIpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scaleUnit: map['scaleUnit'] as int,
      tags: (map['tags'] as Map).cast<String, String>(),
      virtualHubId: map['virtualHubId'] as String,
    );
  }
}
