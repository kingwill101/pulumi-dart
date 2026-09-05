// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_gateway_bgp_setting.dart';
import 'get_vpn_gateway_ip_configuration.dart';

/// Result data returned by getVpnGateway.
class GetVpnGatewayResult {
  /// A `bgpSettings` block as defined below.
  final List<GetVpnGatewayBgpSetting>? bgpSettings;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `ipConfiguration` block as defined below.
  final List<GetVpnGatewayIpConfiguration>? ipConfigurations;
  /// The Azure location where the VPN Gateway exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// The Scale Unit of this VPN Gateway.
  final int? scaleUnit;
  /// A mapping of tags assigned to the VPN Gateway.
  final Map<String, String>? tags;
  /// The ID of the Virtual Hub within which this VPN Gateway has been created.
  final String? virtualHubId;

  /// Creates a new [GetVpnGatewayResult].
  /// [bgpSettings] A `bgpSettings` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipConfigurations] An `ipConfiguration` block as defined below.
  /// [location] The Azure location where the VPN Gateway exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [scaleUnit] The Scale Unit of this VPN Gateway.
  /// [tags] A mapping of tags assigned to the VPN Gateway.
  /// [virtualHubId] The ID of the Virtual Hub within which this VPN Gateway has been created.
  const GetVpnGatewayResult({
    this.bgpSettings,
    this.id,
    this.ipConfigurations,
    this.location,
    this.name,
    this.resourceGroupName,
    this.scaleUnit,
    this.tags,
    this.virtualHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpSettings': ?(() { final guardedValue = bgpSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpnGatewayBgpSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ipConfigurations': ?(() { final guardedValue = ipConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpnGatewayIpConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'scaleUnit': ?scaleUnit,
      'tags': ?tags,
      'virtualHubId': ?virtualHubId,
    };
  }

  factory GetVpnGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayResult(
      bgpSettings: (() { final guardedValue = map['bgpSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpnGatewayBgpSetting>(guardedValue, (value) => GetVpnGatewayBgpSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpnGatewayIpConfiguration>(guardedValue, (value) => GetVpnGatewayIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scaleUnit: (() { final guardedValue = map['scaleUnit']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      virtualHubId: (() { final guardedValue = map['virtualHubId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
