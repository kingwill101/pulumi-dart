// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Result data returned by getVirtualWan.
class GetVirtualWanResult {
  /// True if branch to branch traffic is allowed.
  final bool? allowBranchToBranchTraffic;
  /// True if Vnet to Vnet traffic is allowed.
  final bool? allowVnetToVnetTraffic;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Vpn encryption to be disabled or not.
  final bool? disableVpnEncryption;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// The office local breakout category.
  final String? office365LocalBreakoutCategory;
  /// The provisioning state of the virtual WAN resource.
  final String? provisioningState;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;
  /// List of VirtualHubs in the VirtualWAN.
  final List<SubResourceResponse>? virtualHubs;
  /// List of VpnSites in the VirtualWAN.
  final List<SubResourceResponse>? vpnSites;

  /// Creates a new [GetVirtualWanResult].
  /// [allowBranchToBranchTraffic] True if branch to branch traffic is allowed.
  /// [allowVnetToVnetTraffic] True if Vnet to Vnet traffic is allowed.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [disableVpnEncryption] Vpn encryption to be disabled or not.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [office365LocalBreakoutCategory] The office local breakout category.
  /// [provisioningState] The provisioning state of the virtual WAN resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [virtualHubs] List of VirtualHubs in the VirtualWAN.
  /// [vpnSites] List of VpnSites in the VirtualWAN.
  const GetVirtualWanResult({
    this.allowBranchToBranchTraffic,
    this.allowVnetToVnetTraffic,
    this.azureApiVersion,
    this.disableVpnEncryption,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.office365LocalBreakoutCategory,
    this.provisioningState,
    this.tags,
    this.type,
    this.virtualHubs,
    this.vpnSites,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowBranchToBranchTraffic': ?allowBranchToBranchTraffic,
      'allowVnetToVnetTraffic': ?allowVnetToVnetTraffic,
      'azureApiVersion': ?azureApiVersion,
      'disableVpnEncryption': ?disableVpnEncryption,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'office365LocalBreakoutCategory': ?office365LocalBreakoutCategory,
      'provisioningState': ?provisioningState,
      'tags': ?tags,
      'type': ?type,
      'virtualHubs': ?(() { final guardedValue = virtualHubs; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'vpnSites': ?(() { final guardedValue = vpnSites; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetVirtualWanResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualWanResult(
      allowBranchToBranchTraffic: (() { final guardedValue = map['allowBranchToBranchTraffic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowVnetToVnetTraffic: (() { final guardedValue = map['allowVnetToVnetTraffic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableVpnEncryption: (() { final guardedValue = map['disableVpnEncryption']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      office365LocalBreakoutCategory: (() { final guardedValue = map['office365LocalBreakoutCategory']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualHubs: (() { final guardedValue = map['virtualHubs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      vpnSites: (() { final guardedValue = map['vpnSites']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
