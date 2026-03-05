// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_advertised_ip_range_compute_v1.dart';
import 'router_bgp_peer_advertise_mode_compute_v1.dart';
import 'router_bgp_peer_advertised_groups_item_compute_v1.dart';
import 'router_bgp_peer_bfd_compute_v1.dart';
import 'router_bgp_peer_custom_learned_ip_range_compute_v1.dart';
import 'router_bgp_peer_enable_compute_v1.dart';

class RouterBgpPeerComputeV1 {
  /// User-specified flag to indicate which mode to use for advertisement.
  final pulumi.Input<RouterBgpPeerAdvertiseModeComputeV1>? advertiseMode;
  /// User-specified list of prefix groups to advertise in custom mode, which currently supports the following option: - ALL_SUBNETS: Advertises all of the router's own VPC subnets. This excludes any routes learned for subnets that use VPC Network Peering. Note that this field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the "bgp" message). These groups are advertised in addition to any specified prefixes. Leave this field blank to advertise no custom groups.
  final pulumi.Input<List<RouterBgpPeerAdvertisedGroupsItemComputeV1>>? advertisedGroups;
  /// User-specified list of individual IP ranges to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the "bgp" message). These IP ranges are advertised in addition to any specified groups. Leave this field blank to advertise no custom IP ranges.
  final pulumi.Input<List<RouterAdvertisedIpRangeComputeV1>>? advertisedIpRanges;
  /// The priority of routes advertised to this BGP peer. Where there is more than one matching route of maximum length, the routes with the lowest priority value win.
  final pulumi.Input<int>? advertisedRoutePriority;
  /// BFD configuration for the BGP peering.
  final pulumi.Input<RouterBgpPeerBfdComputeV1>? bfd;
  /// A list of user-defined custom learned route IP address ranges for a BGP session.
  final pulumi.Input<List<RouterBgpPeerCustomLearnedIpRangeComputeV1>>? customLearnedIpRanges;
  /// The user-defined custom learned route priority for a BGP session. This value is applied to all custom learned route ranges for the session. You can choose a value from `0` to `65335`. If you don't provide a value, Google Cloud assigns a priority of `100` to the ranges.
  final pulumi.Input<int>? customLearnedRoutePriority;
  /// The status of the BGP peer connection. If set to FALSE, any active session with the peer is terminated and all associated routing information is removed. If set to TRUE, the peer connection can be established with routing information. The default is TRUE.
  final pulumi.Input<RouterBgpPeerEnableComputeV1>? enable;
  /// Enable IPv6 traffic over BGP Peer. If not specified, it is disabled by default.
  final pulumi.Input<bool>? enableIpv6;
  /// Name of the interface the BGP peer is associated with.
  final pulumi.Input<String>? interfaceName;
  /// IP address of the interface inside Google Cloud Platform. Only IPv4 is supported.
  final pulumi.Input<String>? ipAddress;
  /// IPv6 address of the interface inside Google Cloud Platform.
  final pulumi.Input<String>? ipv6NexthopAddress;
  /// Present if MD5 authentication is enabled for the peering. Must be the name of one of the entries in the Router.md5_authentication_keys. The field must comply with RFC1035.
  final pulumi.Input<String>? md5AuthenticationKeyName;
  /// Name of this BGP peer. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Peer BGP Autonomous System Number (ASN). Each BGP interface may use a different value.
  final pulumi.Input<int>? peerAsn;
  /// IP address of the BGP interface outside Google Cloud Platform. Only IPv4 is supported.
  final pulumi.Input<String>? peerIpAddress;
  /// IPv6 address of the BGP interface outside Google Cloud Platform.
  final pulumi.Input<String>? peerIpv6NexthopAddress;
  /// URI of the VM instance that is used as third-party router appliances such as Next Gen Firewalls, Virtual Routers, or Router Appliances. The VM instance must be located in zones contained in the same region as this Cloud Router. The VM instance is the peer side of the BGP session.
  final pulumi.Input<String>? routerApplianceInstance;

  /// Creates a new [RouterBgpPeerComputeV1].
  /// [advertiseMode] User-specified flag to indicate which mode to use for advertisement.
  /// [advertisedGroups] User-specified list of prefix groups to advertise in custom mode, which currently supports the following option: - ALL_SUBNETS: Advertises all of the router's own VPC subnets. This excludes any routes learned for subnets that use VPC Network Peering. Note that this field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the "bgp" message). These groups are advertised in addition to any specified prefixes. Leave this field blank to advertise no custom groups.
  /// [advertisedIpRanges] User-specified list of individual IP ranges to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the "bgp" message). These IP ranges are advertised in addition to any specified groups. Leave this field blank to advertise no custom IP ranges.
  /// [advertisedRoutePriority] The priority of routes advertised to this BGP peer. Where there is more than one matching route of maximum length, the routes with the lowest priority value win.
  /// [bfd] BFD configuration for the BGP peering.
  /// [customLearnedIpRanges] A list of user-defined custom learned route IP address ranges for a BGP session.
  /// [customLearnedRoutePriority] The user-defined custom learned route priority for a BGP session. This value is applied to all custom learned route ranges for the session. You can choose a value from `0` to `65335`. If you don't provide a value, Google Cloud assigns a priority of `100` to the ranges.
  /// [enable] The status of the BGP peer connection. If set to FALSE, any active session with the peer is terminated and all associated routing information is removed. If set to TRUE, the peer connection can be established with routing information. The default is TRUE.
  /// [enableIpv6] Enable IPv6 traffic over BGP Peer. If not specified, it is disabled by default.
  /// [interfaceName] Name of the interface the BGP peer is associated with.
  /// [ipAddress] IP address of the interface inside Google Cloud Platform. Only IPv4 is supported.
  /// [ipv6NexthopAddress] IPv6 address of the interface inside Google Cloud Platform.
  /// [md5AuthenticationKeyName] Present if MD5 authentication is enabled for the peering. Must be the name of one of the entries in the Router.md5_authentication_keys. The field must comply with RFC1035.
  /// [name] Name of this BGP peer. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [peerAsn] Peer BGP Autonomous System Number (ASN). Each BGP interface may use a different value.
  /// [peerIpAddress] IP address of the BGP interface outside Google Cloud Platform. Only IPv4 is supported.
  /// [peerIpv6NexthopAddress] IPv6 address of the BGP interface outside Google Cloud Platform.
  /// [routerApplianceInstance] URI of the VM instance that is used as third-party router appliances such as Next Gen Firewalls, Virtual Routers, or Router Appliances. The VM instance must be located in zones contained in the same region as this Cloud Router. The VM instance is the peer side of the BGP session.
  RouterBgpPeerComputeV1({
    this.advertiseMode,
    this.advertisedGroups,
    this.advertisedIpRanges,
    this.advertisedRoutePriority,
    this.bfd,
    this.customLearnedIpRanges,
    this.customLearnedRoutePriority,
    this.enable,
    this.enableIpv6,
    this.interfaceName,
    this.ipAddress,
    this.ipv6NexthopAddress,
    this.md5AuthenticationKeyName,
    this.name,
    this.peerAsn,
    this.peerIpAddress,
    this.peerIpv6NexthopAddress,
    this.routerApplianceInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseMode': ?pulumi.Input.mapOptionalInputValue<RouterBgpPeerAdvertiseModeComputeV1, String>(advertiseMode, (value) => value.wireValue),
      'advertisedGroups': ?pulumi.Input.mapOptionalInputValue<List<RouterBgpPeerAdvertisedGroupsItemComputeV1>, List<String>>(advertisedGroups, (value) => pulumi.Input.encodeList<RouterBgpPeerAdvertisedGroupsItemComputeV1, String>(value, (value) => value.wireValue)),
      'advertisedIpRanges': ?pulumi.Input.mapOptionalInputValue<List<RouterAdvertisedIpRangeComputeV1>, List<Map<String, dynamic>>>(advertisedIpRanges, (value) => pulumi.Input.encodeList<RouterAdvertisedIpRangeComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'advertisedRoutePriority': ?advertisedRoutePriority,
      'bfd': ?pulumi.Input.mapOptionalInputValue<RouterBgpPeerBfdComputeV1, Map<String, dynamic>>(bfd, (value) => value.toMap()),
      'customLearnedIpRanges': ?pulumi.Input.mapOptionalInputValue<List<RouterBgpPeerCustomLearnedIpRangeComputeV1>, List<Map<String, dynamic>>>(customLearnedIpRanges, (value) => pulumi.Input.encodeList<RouterBgpPeerCustomLearnedIpRangeComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customLearnedRoutePriority': ?customLearnedRoutePriority,
      'enable': ?pulumi.Input.mapOptionalInputValue<RouterBgpPeerEnableComputeV1, String>(enable, (value) => value.wireValue),
      'enableIpv6': ?enableIpv6,
      'interfaceName': ?interfaceName,
      'ipAddress': ?ipAddress,
      'ipv6NexthopAddress': ?ipv6NexthopAddress,
      'md5AuthenticationKeyName': ?md5AuthenticationKeyName,
      'name': ?name,
      'peerAsn': ?peerAsn,
      'peerIpAddress': ?peerIpAddress,
      'peerIpv6NexthopAddress': ?peerIpv6NexthopAddress,
      'routerApplianceInstance': ?routerApplianceInstance,
    };
  }

  factory RouterBgpPeerComputeV1.fromMap(Map<String, dynamic> map) {
    return RouterBgpPeerComputeV1(
      advertiseMode: (() { final guardedValue = map['advertiseMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouterBgpPeerAdvertiseModeComputeV1.fromValue(guardedValue as String)); })(),
      advertisedGroups: (() { final guardedValue = map['advertisedGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterBgpPeerAdvertisedGroupsItemComputeV1>(guardedValue, (value) => RouterBgpPeerAdvertisedGroupsItemComputeV1.fromValue(value as String))); })(),
      advertisedIpRanges: (() { final guardedValue = map['advertisedIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterAdvertisedIpRangeComputeV1>(guardedValue, (value) => RouterAdvertisedIpRangeComputeV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      advertisedRoutePriority: (() { final guardedValue = map['advertisedRoutePriority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      bfd: (() { final guardedValue = map['bfd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouterBgpPeerBfdComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customLearnedIpRanges: (() { final guardedValue = map['customLearnedIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterBgpPeerCustomLearnedIpRangeComputeV1>(guardedValue, (value) => RouterBgpPeerCustomLearnedIpRangeComputeV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customLearnedRoutePriority: (() { final guardedValue = map['customLearnedRoutePriority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouterBgpPeerEnableComputeV1.fromValue(guardedValue as String)); })(),
      enableIpv6: (() { final guardedValue = map['enableIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      interfaceName: (() { final guardedValue = map['interfaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6NexthopAddress: (() { final guardedValue = map['ipv6NexthopAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      md5AuthenticationKeyName: (() { final guardedValue = map['md5AuthenticationKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerAsn: (() { final guardedValue = map['peerAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      peerIpAddress: (() { final guardedValue = map['peerIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerIpv6NexthopAddress: (() { final guardedValue = map['peerIpv6NexthopAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routerApplianceInstance: (() { final guardedValue = map['routerApplianceInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

