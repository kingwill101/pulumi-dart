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
  final pulumi.Input<List<RouterPeerCustomLearnedIpRange>>?
  customLearnedIpRanges;

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
    required this.interface,
    this.ipAddress,
    this.ipv4NexthopAddress,
    this.ipv6NexthopAddress,
    this.md5AuthenticationKey,
    this.name,
    required this.peerAsn,
    this.peerIpAddress,
    this.peerIpv4NexthopAddress,
    this.peerIpv6NexthopAddress,
    this.project,
    this.region,
    required this.router,
    this.routerApplianceInstance,
    this.zeroAdvertisedRoutePriority,
    this.zeroCustomLearnedRoutePriority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseMode': ?advertiseMode,
      'advertisedGroups': ?advertisedGroups,
      'advertisedIpRanges':
          ?pulumi.Input.mapOptionalInputValue<
            List<RouterPeerAdvertisedIpRange>,
            List<Map<String, dynamic>>
          >(
            advertisedIpRanges,
            (value) =>
                pulumi.Input.encodeList<
                  RouterPeerAdvertisedIpRange,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'advertisedRoutePriority': ?advertisedRoutePriority,
      'bfd':
          ?pulumi.Input.mapOptionalInputValue<
            RouterPeerBfd,
            Map<String, dynamic>
          >(bfd, (value) => value.toMap()),
      'customLearnedIpRanges':
          ?pulumi.Input.mapOptionalInputValue<
            List<RouterPeerCustomLearnedIpRange>,
            List<Map<String, dynamic>>
          >(
            customLearnedIpRanges,
            (value) =>
                pulumi.Input.encodeList<
                  RouterPeerCustomLearnedIpRange,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      'md5AuthenticationKey':
          ?pulumi.Input.mapOptionalInputValue<
            RouterPeerMd5AuthenticationKey,
            Map<String, dynamic>
          >(md5AuthenticationKey, (value) => value.toMap()),
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
      advertiseMode: (() {
        final guardedValue = map['advertiseMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      advertisedGroups: (() {
        final guardedValue = map['advertisedGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      advertisedIpRanges: (() {
        final guardedValue = map['advertisedIpRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RouterPeerAdvertisedIpRange>(
            guardedValue,
            (value) => RouterPeerAdvertisedIpRange.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      advertisedRoutePriority: (() {
        final guardedValue = map['advertisedRoutePriority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      bfd: (() {
        final guardedValue = map['bfd'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RouterPeerBfd.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      customLearnedIpRanges: (() {
        final guardedValue = map['customLearnedIpRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RouterPeerCustomLearnedIpRange>(
            guardedValue,
            (value) => RouterPeerCustomLearnedIpRange.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      customLearnedRoutePriority: (() {
        final guardedValue = map['customLearnedRoutePriority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      enable: (() {
        final guardedValue = map['enable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableIpv4: (() {
        final guardedValue = map['enableIpv4'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableIpv6: (() {
        final guardedValue = map['enableIpv6'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      exportPolicies: (() {
        final guardedValue = map['exportPolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      importPolicies: (() {
        final guardedValue = map['importPolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      interface: pulumi.Input.fromValue(map['interface'] as String),
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv4NexthopAddress: (() {
        final guardedValue = map['ipv4NexthopAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6NexthopAddress: (() {
        final guardedValue = map['ipv6NexthopAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      md5AuthenticationKey: (() {
        final guardedValue = map['md5AuthenticationKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RouterPeerMd5AuthenticationKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peerAsn: pulumi.Input.fromValue(map['peerAsn'] as int),
      peerIpAddress: (() {
        final guardedValue = map['peerIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peerIpv4NexthopAddress: (() {
        final guardedValue = map['peerIpv4NexthopAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peerIpv6NexthopAddress: (() {
        final guardedValue = map['peerIpv6NexthopAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      router: pulumi.Input.fromValue(map['router'] as String),
      routerApplianceInstance: (() {
        final guardedValue = map['routerApplianceInstance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zeroAdvertisedRoutePriority: (() {
        final guardedValue = map['zeroAdvertisedRoutePriority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      zeroCustomLearnedRoutePriority: (() {
        final guardedValue = map['zeroCustomLearnedRoutePriority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
