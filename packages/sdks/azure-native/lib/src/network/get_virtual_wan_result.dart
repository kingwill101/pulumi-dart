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
  final String azureApiVersion;
  /// Vpn encryption to be disabled or not.
  final bool? disableVpnEncryption;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String location;
  /// Resource name.
  final String name;
  /// The office local breakout category.
  final String office365LocalBreakoutCategory;
  /// The provisioning state of the virtual WAN resource.
  final String provisioningState;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// List of VirtualHubs in the VirtualWAN.
  final List<SubResourceResponse> virtualHubs;
  /// List of VpnSites in the VirtualWAN.
  final List<SubResourceResponse> vpnSites;

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
  GetVirtualWanResult({
    this.allowBranchToBranchTraffic,
    this.allowVnetToVnetTraffic,
    required this.azureApiVersion,
    this.disableVpnEncryption,
    required this.etag,
    this.id,
    required this.location,
    required this.name,
    required this.office365LocalBreakoutCategory,
    required this.provisioningState,
    this.tags,
    required this.type,
    required this.virtualHubs,
    required this.vpnSites,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowBranchToBranchTraffic': ?allowBranchToBranchTraffic,
      'allowVnetToVnetTraffic': ?allowVnetToVnetTraffic,
      'azureApiVersion': azureApiVersion,
      'disableVpnEncryption': ?disableVpnEncryption,
      'etag': etag,
      'id': ?id,
      'location': location,
      'name': name,
      'office365LocalBreakoutCategory': office365LocalBreakoutCategory,
      'provisioningState': provisioningState,
      'tags': ?tags,
      'type': type,
      'virtualHubs': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(virtualHubs, (value) => value.toMap()),
      'vpnSites': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(vpnSites, (value) => value.toMap()),
    };
  }

  factory GetVirtualWanResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualWanResult(
      allowBranchToBranchTraffic: map['allowBranchToBranchTraffic'] == null ? null : map['allowBranchToBranchTraffic'] as bool,
      allowVnetToVnetTraffic: map['allowVnetToVnetTraffic'] == null ? null : map['allowVnetToVnetTraffic'] as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      disableVpnEncryption: map['disableVpnEncryption'] == null ? null : map['disableVpnEncryption'] as bool,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      office365LocalBreakoutCategory: map['office365LocalBreakoutCategory'] as String,
      provisioningState: map['provisioningState'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      virtualHubs: pulumi.Input.decodeList<SubResourceResponse>(map['virtualHubs'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      vpnSites: pulumi.Input.decodeList<SubResourceResponse>(map['vpnSites'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

