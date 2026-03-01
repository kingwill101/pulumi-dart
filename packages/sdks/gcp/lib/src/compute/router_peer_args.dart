// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_peer_advertised_ip_range.dart';
import 'router_peer_bfd.dart';
import 'router_peer_custom_learned_ip_range.dart';
import 'router_peer_md5_authentication_key.dart';

/// {@template pulumi_compute_router_peer_router_peer_args_doc}
/// The set of arguments for RouterPeer.
/// {@endtemplate}
/// {@macro pulumi_compute_router_peer_router_peer_args_doc}
class RouterPeerArgs {
  /// User-specified flag to indicate which mode to use for advertisement.
  /// Valid values of this enum field are: `DEFAULT`, `CUSTOM`
  /// Default value is `DEFAULT`.
  /// Possible values are: `DEFAULT`, `CUSTOM`.
  final pulumi.Input<String>? advertiseMode;
  /// User-specified list of prefix groups to advertise in custom
  /// mode, which currently supports the following option:
  /// * `ALL_SUBNETS`: Advertises all of the router's own VPC subnets.
  /// This excludes any routes learned for subnets that use VPC Network
  /// Peering.
  ///
  /// Note that this field can only be populated if advertiseMode is `CUSTOM`
  /// and overrides the list defined for the router (in the "bgp" message).
  /// These groups are advertised in addition to any specified prefixes.
  /// Leave this field blank to advertise no custom groups.
  final pulumi.Input<List<String>>? advertisedGroups;
  /// User-specified list of individual IP ranges to advertise in
  /// custom mode. This field can only be populated if advertiseMode
  /// is `CUSTOM` and is advertised to all peers of the router. These IP
  /// ranges will be advertised in addition to any specified groups.
  /// Leave this field blank to advertise no custom IP ranges.
  /// Structure is documented below.
  final pulumi.Input<List<RouterPeerAdvertisedIpRange>>? advertisedIpRanges;
  /// The priority of routes advertised to this BGP peer.
  /// Where there is more than one matching route of maximum
  /// length, the routes with the lowest priority value win.
  final pulumi.Input<int>? advertisedRoutePriority;
  /// BFD configuration for the BGP peering.
  /// Structure is documented below.
  final pulumi.Input<RouterPeerBfd>? bfd;
  /// The custom learned route IP address range. Must be a valid CIDR-formatted prefix.
  /// If an IP address is provided without a subnet mask, it is interpreted as, for IPv4,
  /// a /32 singular IP address range, and, for IPv6, /128.
  /// Structure is documented below.
  final pulumi.Input<List<RouterPeerCustomLearnedIpRange>>? customLearnedIpRanges;
  /// The user-defined custom learned route priority for a BGP session.
  /// This value is applied to all custom learned route ranges for the session.
  /// You can choose a value from 0 to 65335. If you don't provide a value,
  /// Google Cloud assigns a priority of 100 to the ranges.
  final pulumi.Input<int>? customLearnedRoutePriority;
  /// The status of the BGP peer connection. If set to false, any active session
  /// with the peer is terminated and all associated routing information is removed.
  /// If set to true, the peer connection can be established with routing information.
  /// The default is true.
  final pulumi.Input<bool>? enable;
  /// Enable IPv4 traffic over BGP Peer. It is enabled by default if the peerIpAddress is version 4.
  final pulumi.Input<bool>? enableIpv4;
  /// Enable IPv6 traffic over BGP Peer. If not specified, it is disabled by default.
  final pulumi.Input<bool>? enableIpv6;
  /// routers.list of export policies applied to this peer, in the order they must be evaluated.
  /// The name must correspond to an existing policy that has ROUTE_POLICY_TYPE_EXPORT type.
  final pulumi.Input<List<String>>? exportPolicies;
  /// routers.list of import policies applied to this peer, in the order they must be evaluated.
  /// The name must correspond to an existing policy that has ROUTE_POLICY_TYPE_IMPORT type.
  final pulumi.Input<List<String>>? importPolicies;
  /// Name of the interface the BGP peer is associated with.
  final pulumi.Input<String> interface;
  /// IP address of the interface inside Google Cloud Platform.
  /// Only IPv4 is supported.
  final pulumi.Input<String>? ipAddress;
  /// IPv4 address of the interface inside Google Cloud Platform.
  final pulumi.Input<String>? ipv4NexthopAddress;
  /// IPv6 address of the interface inside Google Cloud Platform.
  /// The address must be in the range 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64.
  /// If you do not specify the next hop addresses, Google Cloud automatically
  /// assigns unused addresses from the 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64 range for you.
  final pulumi.Input<String>? ipv6NexthopAddress;
  /// Configuration for MD5 authentication on the BGP session.
  /// Structure is documented below.
  final pulumi.Input<RouterPeerMd5AuthenticationKey>? md5AuthenticationKey;
  /// Name of this BGP peer. The name must be 1-63 characters long,
  /// and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which
  /// means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Peer BGP Autonomous System Number (ASN).
  /// Each BGP interface may use a different value.
  final pulumi.Input<int> peerAsn;
  /// IP address of the BGP interface outside Google Cloud Platform.
  /// Only IPv4 is supported. Required if `ip_address` is set.
  final pulumi.Input<String>? peerIpAddress;
  /// IPv4 address of the BGP interface outside Google Cloud Platform.
  final pulumi.Input<String>? peerIpv4NexthopAddress;
  /// IPv6 address of the BGP interface outside Google Cloud Platform.
  /// The address must be in the range 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64.
  /// If you do not specify the next hop addresses, Google Cloud automatically
  /// assigns unused addresses from the 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64 range for you.
  final pulumi.Input<String>? peerIpv6NexthopAddress;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Region where the router and BgpPeer reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;
  /// The name of the Cloud Router in which this BgpPeer will be configured.
  ///
  ///
  /// - - -
  final pulumi.Input<String> router;
  /// The URI of the VM instance that is used as third-party router appliances
  /// such as Next Gen Firewalls, Virtual Routers, or Router Appliances.
  /// The VM instance must be located in zones contained in the same region as
  /// this Cloud Router. The VM instance is the peer side of the BGP session.
  final pulumi.Input<String>? routerApplianceInstance;
  /// The user-defined zero-advertised-route-priority for a advertised-route-priority in BGP session.
  /// This value has to be set true to force the advertised_route_priority to be 0.
  final pulumi.Input<bool>? zeroAdvertisedRoutePriority;
  /// The user-defined zero-custom-learned-route-priority for a custom-learned-route-priority in BGP session.
  /// This value has to be set true to force the custom_learned_route_priority to be 0.
  final pulumi.Input<bool>? zeroCustomLearnedRoutePriority;

  /// Creates a new [RouterPeerArgs].
  /// [advertiseMode] User-specified flag to indicate which mode to use for advertisement.
  /// [advertisedGroups] User-specified list of prefix groups to advertise in custom
  /// [advertisedIpRanges] User-specified list of individual IP ranges to advertise in
  /// [advertisedRoutePriority] The priority of routes advertised to this BGP peer.
  /// [bfd] BFD configuration for the BGP peering.
  /// [customLearnedIpRanges] The custom learned route IP address range. Must be a valid CIDR-formatted prefix.
  /// [customLearnedRoutePriority] The user-defined custom learned route priority for a BGP session.
  /// [enable] The status of the BGP peer connection. If set to false, any active session
  /// [enableIpv4] Enable IPv4 traffic over BGP Peer. It is enabled by default if the peerIpAddress is version 4.
  /// [enableIpv6] Enable IPv6 traffic over BGP Peer. If not specified, it is disabled by default.
  /// [exportPolicies] routers.list of export policies applied to this peer, in the order they must be evaluated.
  /// [importPolicies] routers.list of import policies applied to this peer, in the order they must be evaluated.
  /// [interface] Name of the interface the BGP peer is associated with.
  /// [ipAddress] IP address of the interface inside Google Cloud Platform.
  /// [ipv4NexthopAddress] IPv4 address of the interface inside Google Cloud Platform.
  /// [ipv6NexthopAddress] IPv6 address of the interface inside Google Cloud Platform.
  /// [md5AuthenticationKey] Configuration for MD5 authentication on the BGP session.
  /// [name] Name of this BGP peer. The name must be 1-63 characters long,
  /// [peerAsn] Peer BGP Autonomous System Number (ASN).
  /// [peerIpAddress] IP address of the BGP interface outside Google Cloud Platform.
  /// [peerIpv4NexthopAddress] IPv4 address of the BGP interface outside Google Cloud Platform.
  /// [peerIpv6NexthopAddress] IPv6 address of the BGP interface outside Google Cloud Platform.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where the router and BgpPeer reside.
  /// [router] The name of the Cloud Router in which this BgpPeer will be configured.
  /// [routerApplianceInstance] The URI of the VM instance that is used as third-party router appliances
  /// [zeroAdvertisedRoutePriority] The user-defined zero-advertised-route-priority for a advertised-route-priority in BGP session.
  /// [zeroCustomLearnedRoutePriority] The user-defined zero-custom-learned-route-priority for a custom-learned-route-priority in BGP session.
  RouterPeerArgs({
    pulumi.Output<String>? advertiseMode,
    pulumi.Output<List<String>>? advertisedGroups,
    pulumi.Output<List<RouterPeerAdvertisedIpRange>>? advertisedIpRanges,
    pulumi.Output<int>? advertisedRoutePriority,
    pulumi.Output<RouterPeerBfd>? bfd,
    pulumi.Output<List<RouterPeerCustomLearnedIpRange>>? customLearnedIpRanges,
    pulumi.Output<int>? customLearnedRoutePriority,
    pulumi.Output<bool>? enable,
    pulumi.Output<bool>? enableIpv4,
    pulumi.Output<bool>? enableIpv6,
    pulumi.Output<List<String>>? exportPolicies,
    pulumi.Output<List<String>>? importPolicies,
    required pulumi.Output<String> interface,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? ipv4NexthopAddress,
    pulumi.Output<String>? ipv6NexthopAddress,
    pulumi.Output<RouterPeerMd5AuthenticationKey>? md5AuthenticationKey,
    pulumi.Output<String>? name,
    required pulumi.Output<int> peerAsn,
    pulumi.Output<String>? peerIpAddress,
    pulumi.Output<String>? peerIpv4NexthopAddress,
    pulumi.Output<String>? peerIpv6NexthopAddress,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    required pulumi.Output<String> router,
    pulumi.Output<String>? routerApplianceInstance,
    pulumi.Output<bool>? zeroAdvertisedRoutePriority,
    pulumi.Output<bool>? zeroCustomLearnedRoutePriority,
  }) :
      advertiseMode = pulumi.Input.asOptionalInput<String>(advertiseMode),
      advertisedGroups = pulumi.Input.asOptionalInput<List<String>>(advertisedGroups),
      advertisedIpRanges = pulumi.Input.asOptionalInput<List<RouterPeerAdvertisedIpRange>>(advertisedIpRanges),
      advertisedRoutePriority = pulumi.Input.asOptionalInput<int>(advertisedRoutePriority),
      bfd = pulumi.Input.asOptionalInput<RouterPeerBfd>(bfd),
      customLearnedIpRanges = pulumi.Input.asOptionalInput<List<RouterPeerCustomLearnedIpRange>>(customLearnedIpRanges),
      customLearnedRoutePriority = pulumi.Input.asOptionalInput<int>(customLearnedRoutePriority),
      enable = pulumi.Input.asOptionalInput<bool>(enable),
      enableIpv4 = pulumi.Input.asOptionalInput<bool>(enableIpv4),
      enableIpv6 = pulumi.Input.asOptionalInput<bool>(enableIpv6),
      exportPolicies = pulumi.Input.asOptionalInput<List<String>>(exportPolicies),
      importPolicies = pulumi.Input.asOptionalInput<List<String>>(importPolicies),
      interface = pulumi.Input.asInput<String>(interface),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      ipv4NexthopAddress = pulumi.Input.asOptionalInput<String>(ipv4NexthopAddress),
      ipv6NexthopAddress = pulumi.Input.asOptionalInput<String>(ipv6NexthopAddress),
      md5AuthenticationKey = pulumi.Input.asOptionalInput<RouterPeerMd5AuthenticationKey>(md5AuthenticationKey),
      name = pulumi.Input.asOptionalInput<String>(name),
      peerAsn = pulumi.Input.asInput<int>(peerAsn),
      peerIpAddress = pulumi.Input.asOptionalInput<String>(peerIpAddress),
      peerIpv4NexthopAddress = pulumi.Input.asOptionalInput<String>(peerIpv4NexthopAddress),
      peerIpv6NexthopAddress = pulumi.Input.asOptionalInput<String>(peerIpv6NexthopAddress),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      router = pulumi.Input.asInput<String>(router),
      routerApplianceInstance = pulumi.Input.asOptionalInput<String>(routerApplianceInstance),
      zeroAdvertisedRoutePriority = pulumi.Input.asOptionalInput<bool>(zeroAdvertisedRoutePriority),
      zeroCustomLearnedRoutePriority = pulumi.Input.asOptionalInput<bool>(zeroCustomLearnedRoutePriority);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseMode': ?advertiseMode,
      'advertisedGroups': ?advertisedGroups,
      'advertisedIpRanges': ?pulumi.Input.mapOptionalInputValue<List<RouterPeerAdvertisedIpRange>, List<Map<String, dynamic>>>(advertisedIpRanges, (value) => pulumi.Input.encodeList<RouterPeerAdvertisedIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'advertisedRoutePriority': ?advertisedRoutePriority,
      'bfd': ?pulumi.Input.mapOptionalInputValue<RouterPeerBfd, Map<String, dynamic>>(bfd, (value) => value.toMap()),
      'customLearnedIpRanges': ?pulumi.Input.mapOptionalInputValue<List<RouterPeerCustomLearnedIpRange>, List<Map<String, dynamic>>>(customLearnedIpRanges, (value) => pulumi.Input.encodeList<RouterPeerCustomLearnedIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customLearnedRoutePriority': ?customLearnedRoutePriority,
      'enable': ?enable,
      'enableIpv4': ?enableIpv4,
      'enableIpv6': ?enableIpv6,
      'exportPolicies': ?exportPolicies,
      'importPolicies': ?importPolicies,
      'interface': interface,
      'ipAddress': ?ipAddress,
      'ipv4NexthopAddress': ?ipv4NexthopAddress,
      'ipv6NexthopAddress': ?ipv6NexthopAddress,
      'md5AuthenticationKey': ?pulumi.Input.mapOptionalInputValue<RouterPeerMd5AuthenticationKey, Map<String, dynamic>>(md5AuthenticationKey, (value) => value.toMap()),
      'name': ?name,
      'peerAsn': peerAsn,
      'peerIpAddress': ?peerIpAddress,
      'peerIpv4NexthopAddress': ?peerIpv4NexthopAddress,
      'peerIpv6NexthopAddress': ?peerIpv6NexthopAddress,
      'project': ?project,
      'region': ?region,
      'router': router,
      'routerApplianceInstance': ?routerApplianceInstance,
      'zeroAdvertisedRoutePriority': ?zeroAdvertisedRoutePriority,
      'zeroCustomLearnedRoutePriority': ?zeroCustomLearnedRoutePriority,
    };
  }

  factory RouterPeerArgs.fromMap(Map<String, dynamic> map) {
    return RouterPeerArgs(
      advertiseMode: map['advertiseMode'] == null ? null : pulumi.Output.create<String>(map['advertiseMode'] as String),
      advertisedGroups: map['advertisedGroups'] == null ? null : pulumi.Output.create<List<String>>((map['advertisedGroups'] as List).cast<String>()),
      advertisedIpRanges: map['advertisedIpRanges'] == null ? null : pulumi.Output.create<List<RouterPeerAdvertisedIpRange>>(pulumi.Input.decodeList<RouterPeerAdvertisedIpRange>(map['advertisedIpRanges'], (value) => RouterPeerAdvertisedIpRange.fromMap((value as Map).cast<String, dynamic>()))),
      advertisedRoutePriority: map['advertisedRoutePriority'] == null ? null : pulumi.Output.create<int>(map['advertisedRoutePriority'] as int),
      bfd: map['bfd'] == null ? null : pulumi.Output.create<RouterPeerBfd>(RouterPeerBfd.fromMap((map['bfd'] as Map).cast<String, dynamic>())),
      customLearnedIpRanges: map['customLearnedIpRanges'] == null ? null : pulumi.Output.create<List<RouterPeerCustomLearnedIpRange>>(pulumi.Input.decodeList<RouterPeerCustomLearnedIpRange>(map['customLearnedIpRanges'], (value) => RouterPeerCustomLearnedIpRange.fromMap((value as Map).cast<String, dynamic>()))),
      customLearnedRoutePriority: map['customLearnedRoutePriority'] == null ? null : pulumi.Output.create<int>(map['customLearnedRoutePriority'] as int),
      enable: map['enable'] == null ? null : pulumi.Output.create<bool>(map['enable'] as bool),
      enableIpv4: map['enableIpv4'] == null ? null : pulumi.Output.create<bool>(map['enableIpv4'] as bool),
      enableIpv6: map['enableIpv6'] == null ? null : pulumi.Output.create<bool>(map['enableIpv6'] as bool),
      exportPolicies: map['exportPolicies'] == null ? null : pulumi.Output.create<List<String>>((map['exportPolicies'] as List).cast<String>()),
      importPolicies: map['importPolicies'] == null ? null : pulumi.Output.create<List<String>>((map['importPolicies'] as List).cast<String>()),
      interface: pulumi.Output.create<String>(map['interface'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      ipv4NexthopAddress: map['ipv4NexthopAddress'] == null ? null : pulumi.Output.create<String>(map['ipv4NexthopAddress'] as String),
      ipv6NexthopAddress: map['ipv6NexthopAddress'] == null ? null : pulumi.Output.create<String>(map['ipv6NexthopAddress'] as String),
      md5AuthenticationKey: map['md5AuthenticationKey'] == null ? null : pulumi.Output.create<RouterPeerMd5AuthenticationKey>(RouterPeerMd5AuthenticationKey.fromMap((map['md5AuthenticationKey'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      peerAsn: pulumi.Output.create<int>(map['peerAsn'] as int),
      peerIpAddress: map['peerIpAddress'] == null ? null : pulumi.Output.create<String>(map['peerIpAddress'] as String),
      peerIpv4NexthopAddress: map['peerIpv4NexthopAddress'] == null ? null : pulumi.Output.create<String>(map['peerIpv4NexthopAddress'] as String),
      peerIpv6NexthopAddress: map['peerIpv6NexthopAddress'] == null ? null : pulumi.Output.create<String>(map['peerIpv6NexthopAddress'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      router: pulumi.Output.create<String>(map['router'] as String),
      routerApplianceInstance: map['routerApplianceInstance'] == null ? null : pulumi.Output.create<String>(map['routerApplianceInstance'] as String),
      zeroAdvertisedRoutePriority: map['zeroAdvertisedRoutePriority'] == null ? null : pulumi.Output.create<bool>(map['zeroAdvertisedRoutePriority'] as bool),
      zeroCustomLearnedRoutePriority: map['zeroCustomLearnedRoutePriority'] == null ? null : pulumi.Output.create<bool>(map['zeroCustomLearnedRoutePriority'] as bool),
    );
  }
}

