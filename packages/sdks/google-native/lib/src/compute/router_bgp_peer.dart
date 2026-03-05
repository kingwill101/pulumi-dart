// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_advertised_ip_range.dart';
import 'router_bgp_peer_advertise_mode.dart';
import 'router_bgp_peer_advertised_groups_item.dart';
import 'router_bgp_peer_bfd.dart';
import 'router_bgp_peer_custom_learned_ip_range.dart';
import 'router_bgp_peer_enable.dart';

class RouterBgpPeer {
  /// User-specified flag to indicate which mode to use for advertisement.
  final pulumi.Input<RouterBgpPeerAdvertiseMode>? advertiseMode;
  /// User-specified list of prefix groups to advertise in custom mode, which currently supports the following option: - ALL_SUBNETS: Advertises all of the router's own VPC subnets. This excludes any routes learned for subnets that use VPC Network Peering. Note that this field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the "bgp" message). These groups are advertised in addition to any specified prefixes. Leave this field blank to advertise no custom groups.
  final pulumi.Input<List<RouterBgpPeerAdvertisedGroupsItem>>? advertisedGroups;
  /// User-specified list of individual IP ranges to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the "bgp" message). These IP ranges are advertised in addition to any specified groups. Leave this field blank to advertise no custom IP ranges.
  final pulumi.Input<List<RouterAdvertisedIpRange>>? advertisedIpRanges;
  /// The priority of routes advertised to this BGP peer. Where there is more than one matching route of maximum length, the routes with the lowest priority value win.
  final pulumi.Input<int>? advertisedRoutePriority;
  /// BFD configuration for the BGP peering.
  final pulumi.Input<RouterBgpPeerBfd>? bfd;
  /// A list of user-defined custom learned route IP address ranges for a BGP session.
  final pulumi.Input<List<RouterBgpPeerCustomLearnedIpRange>>? customLearnedIpRanges;
  /// The user-defined custom learned route priority for a BGP session. This value is applied to all custom learned route ranges for the session. You can choose a value from `0` to `65335`. If you don't provide a value, Google Cloud assigns a priority of `100` to the ranges.
  final pulumi.Input<int>? customLearnedRoutePriority;
  /// The status of the BGP peer connection. If set to FALSE, any active session with the peer is terminated and all associated routing information is removed. If set to TRUE, the peer connection can be established with routing information. The default is TRUE.
  final pulumi.Input<RouterBgpPeerEnable>? enable;
  /// Enable IPv4 traffic over BGP Peer. It is enabled by default if the peerIpAddress is version 4.
  final pulumi.Input<bool>? enableIpv4;
  /// Enable IPv6 traffic over BGP Peer. If not specified, it is disabled by default.
  final pulumi.Input<bool>? enableIpv6;
  /// List of export policies applied to this peer, in the order they must be evaluated. The name must correspond to an existing policy that has ROUTE_POLICY_TYPE_EXPORT type.
  final pulumi.Input<List<String>>? exportPolicies;
  /// List of import policies applied to this peer, in the order they must be evaluated. The name must correspond to an existing policy that has ROUTE_POLICY_TYPE_IMPORT type.
  final pulumi.Input<List<String>>? importPolicies;
  /// Name of the interface the BGP peer is associated with.
  final pulumi.Input<String>? interfaceName;
  /// IP address of the interface inside Google Cloud Platform. Only IPv4 is supported.
  final pulumi.Input<String>? ipAddress;
  /// IPv4 address of the interface inside Google Cloud Platform.
  final pulumi.Input<String>? ipv4NexthopAddress;
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
  /// IPv4 address of the BGP interface outside Google Cloud Platform.
  final pulumi.Input<String>? peerIpv4NexthopAddress;
  /// IPv6 address of the BGP interface outside Google Cloud Platform.
  final pulumi.Input<String>? peerIpv6NexthopAddress;
  /// URI of the VM instance that is used as third-party router appliances such as Next Gen Firewalls, Virtual Routers, or Router Appliances. The VM instance must be located in zones contained in the same region as this Cloud Router. The VM instance is the peer side of the BGP session.
  final pulumi.Input<String>? routerApplianceInstance;

  /// Creates a new [RouterBgpPeer].
  /// [advertiseMode] User-specified flag to indicate which mode to use for advertisement.
  /// [advertisedGroups] User-specified list of prefix groups to advertise in custom mode, which currently supports the following option: - ALL_SUBNETS: Advertises all of the router's own VPC subnets. This excludes any routes learned for subnets that use VPC Network Peering. Note that this field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the "bgp" message). These groups are advertised in addition to any specified prefixes. Leave this field blank to advertise no custom groups.
  /// [advertisedIpRanges] User-specified list of individual IP ranges to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the "bgp" message). These IP ranges are advertised in addition to any specified groups. Leave this field blank to advertise no custom IP ranges.
  /// [advertisedRoutePriority] The priority of routes advertised to this BGP peer. Where there is more than one matching route of maximum length, the routes with the lowest priority value win.
  /// [bfd] BFD configuration for the BGP peering.
  /// [customLearnedIpRanges] A list of user-defined custom learned route IP address ranges for a BGP session.
  /// [customLearnedRoutePriority] The user-defined custom learned route priority for a BGP session. This value is applied to all custom learned route ranges for the session. You can choose a value from `0` to `65335`. If you don't provide a value, Google Cloud assigns a priority of `100` to the ranges.
  /// [enable] The status of the BGP peer connection. If set to FALSE, any active session with the peer is terminated and all associated routing information is removed. If set to TRUE, the peer connection can be established with routing information. The default is TRUE.
  /// [enableIpv4] Enable IPv4 traffic over BGP Peer. It is enabled by default if the peerIpAddress is version 4.
  /// [enableIpv6] Enable IPv6 traffic over BGP Peer. If not specified, it is disabled by default.
  /// [exportPolicies] List of export policies applied to this peer, in the order they must be evaluated. The name must correspond to an existing policy that has ROUTE_POLICY_TYPE_EXPORT type.
  /// [importPolicies] List of import policies applied to this peer, in the order they must be evaluated. The name must correspond to an existing policy that has ROUTE_POLICY_TYPE_IMPORT type.
  /// [interfaceName] Name of the interface the BGP peer is associated with.
  /// [ipAddress] IP address of the interface inside Google Cloud Platform. Only IPv4 is supported.
  /// [ipv4NexthopAddress] IPv4 address of the interface inside Google Cloud Platform.
  /// [ipv6NexthopAddress] IPv6 address of the interface inside Google Cloud Platform.
  /// [md5AuthenticationKeyName] Present if MD5 authentication is enabled for the peering. Must be the name of one of the entries in the Router.md5_authentication_keys. The field must comply with RFC1035.
  /// [name] Name of this BGP peer. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [peerAsn] Peer BGP Autonomous System Number (ASN). Each BGP interface may use a different value.
  /// [peerIpAddress] IP address of the BGP interface outside Google Cloud Platform. Only IPv4 is supported.
  /// [peerIpv4NexthopAddress] IPv4 address of the BGP interface outside Google Cloud Platform.
  /// [peerIpv6NexthopAddress] IPv6 address of the BGP interface outside Google Cloud Platform.
  /// [routerApplianceInstance] URI of the VM instance that is used as third-party router appliances such as Next Gen Firewalls, Virtual Routers, or Router Appliances. The VM instance must be located in zones contained in the same region as this Cloud Router. The VM instance is the peer side of the BGP session.
  RouterBgpPeer({
    this.advertiseMode,
    this.advertisedGroups,
    this.advertisedIpRanges,
    this.advertisedRoutePriority,
    this.bfd,
    this.customLearnedIpRanges,
    this.customLearnedRoutePriority,
    this.enable,
    this.enableIpv4,
    this.enableIpv6,
    this.exportPolicies,
    this.importPolicies,
    this.interfaceName,
    this.ipAddress,
    this.ipv4NexthopAddress,
    this.ipv6NexthopAddress,
    this.md5AuthenticationKeyName,
    this.name,
    this.peerAsn,
    this.peerIpAddress,
    this.peerIpv4NexthopAddress,
    this.peerIpv6NexthopAddress,
    this.routerApplianceInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseMode': ?pulumi.Input.mapOptionalInputValue<RouterBgpPeerAdvertiseMode, String>(advertiseMode, (value) => value.wireValue),
      'advertisedGroups': ?pulumi.Input.mapOptionalInputValue<List<RouterBgpPeerAdvertisedGroupsItem>, List<String>>(advertisedGroups, (value) => pulumi.Input.encodeList<RouterBgpPeerAdvertisedGroupsItem, String>(value, (value) => value.wireValue)),
      'advertisedIpRanges': ?pulumi.Input.mapOptionalInputValue<List<RouterAdvertisedIpRange>, List<Map<String, dynamic>>>(advertisedIpRanges, (value) => pulumi.Input.encodeList<RouterAdvertisedIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'advertisedRoutePriority': ?advertisedRoutePriority,
      'bfd': ?pulumi.Input.mapOptionalInputValue<RouterBgpPeerBfd, Map<String, dynamic>>(bfd, (value) => value.toMap()),
      'customLearnedIpRanges': ?pulumi.Input.mapOptionalInputValue<List<RouterBgpPeerCustomLearnedIpRange>, List<Map<String, dynamic>>>(customLearnedIpRanges, (value) => pulumi.Input.encodeList<RouterBgpPeerCustomLearnedIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customLearnedRoutePriority': ?customLearnedRoutePriority,
      'enable': ?pulumi.Input.mapOptionalInputValue<RouterBgpPeerEnable, String>(enable, (value) => value.wireValue),
      'enableIpv4': ?enableIpv4,
      'enableIpv6': ?enableIpv6,
      'exportPolicies': ?exportPolicies,
      'importPolicies': ?importPolicies,
      'interfaceName': ?interfaceName,
      'ipAddress': ?ipAddress,
      'ipv4NexthopAddress': ?ipv4NexthopAddress,
      'ipv6NexthopAddress': ?ipv6NexthopAddress,
      'md5AuthenticationKeyName': ?md5AuthenticationKeyName,
      'name': ?name,
      'peerAsn': ?peerAsn,
      'peerIpAddress': ?peerIpAddress,
      'peerIpv4NexthopAddress': ?peerIpv4NexthopAddress,
      'peerIpv6NexthopAddress': ?peerIpv6NexthopAddress,
      'routerApplianceInstance': ?routerApplianceInstance,
    };
  }

  factory RouterBgpPeer.fromMap(Map<String, dynamic> map) {
    return RouterBgpPeer(
      advertiseMode: (() { final guardedValue = map['advertiseMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouterBgpPeerAdvertiseMode.fromValue(guardedValue as String)); })(),
      advertisedGroups: (() { final guardedValue = map['advertisedGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterBgpPeerAdvertisedGroupsItem>(guardedValue, (value) => RouterBgpPeerAdvertisedGroupsItem.fromValue(value as String))); })(),
      advertisedIpRanges: (() { final guardedValue = map['advertisedIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterAdvertisedIpRange>(guardedValue, (value) => RouterAdvertisedIpRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      advertisedRoutePriority: (() { final guardedValue = map['advertisedRoutePriority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      bfd: (() { final guardedValue = map['bfd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouterBgpPeerBfd.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customLearnedIpRanges: (() { final guardedValue = map['customLearnedIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterBgpPeerCustomLearnedIpRange>(guardedValue, (value) => RouterBgpPeerCustomLearnedIpRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customLearnedRoutePriority: (() { final guardedValue = map['customLearnedRoutePriority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouterBgpPeerEnable.fromValue(guardedValue as String)); })(),
      enableIpv4: (() { final guardedValue = map['enableIpv4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableIpv6: (() { final guardedValue = map['enableIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exportPolicies: (() { final guardedValue = map['exportPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      importPolicies: (() { final guardedValue = map['importPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      interfaceName: (() { final guardedValue = map['interfaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4NexthopAddress: (() { final guardedValue = map['ipv4NexthopAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6NexthopAddress: (() { final guardedValue = map['ipv6NexthopAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      md5AuthenticationKeyName: (() { final guardedValue = map['md5AuthenticationKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerAsn: (() { final guardedValue = map['peerAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      peerIpAddress: (() { final guardedValue = map['peerIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerIpv4NexthopAddress: (() { final guardedValue = map['peerIpv4NexthopAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerIpv6NexthopAddress: (() { final guardedValue = map['peerIpv6NexthopAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routerApplianceInstance: (() { final guardedValue = map['routerApplianceInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

