// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_advertised_ip_range_response_compute_v1.dart';
import 'router_bgp_peer_bfd_response_compute_v1.dart';
import 'router_bgp_peer_custom_learned_ip_range_response_compute_v1.dart';

class RouterBgpPeerResponseComputeV1 {
  /// User-specified flag to indicate which mode to use for advertisement.
  final pulumi.Input<String> advertiseMode;
  /// User-specified list of prefix groups to advertise in custom mode, which currently supports the following option: - ALL_SUBNETS: Advertises all of the router's own VPC subnets. This excludes any routes learned for subnets that use VPC Network Peering. Note that this field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the "bgp" message). These groups are advertised in addition to any specified prefixes. Leave this field blank to advertise no custom groups.
  final pulumi.Input<List<String>> advertisedGroups;
  /// User-specified list of individual IP ranges to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the "bgp" message). These IP ranges are advertised in addition to any specified groups. Leave this field blank to advertise no custom IP ranges.
  final pulumi.Input<List<RouterAdvertisedIpRangeResponseComputeV1>> advertisedIpRanges;
  /// The priority of routes advertised to this BGP peer. Where there is more than one matching route of maximum length, the routes with the lowest priority value win.
  final pulumi.Input<int> advertisedRoutePriority;
  /// BFD configuration for the BGP peering.
  final pulumi.Input<RouterBgpPeerBfdResponseComputeV1> bfd;
  /// A list of user-defined custom learned route IP address ranges for a BGP session.
  final pulumi.Input<List<RouterBgpPeerCustomLearnedIpRangeResponseComputeV1>> customLearnedIpRanges;
  /// The user-defined custom learned route priority for a BGP session. This value is applied to all custom learned route ranges for the session. You can choose a value from `0` to `65335`. If you don't provide a value, Google Cloud assigns a priority of `100` to the ranges.
  final pulumi.Input<int> customLearnedRoutePriority;
  /// The status of the BGP peer connection. If set to FALSE, any active session with the peer is terminated and all associated routing information is removed. If set to TRUE, the peer connection can be established with routing information. The default is TRUE.
  final pulumi.Input<String> enable;
  /// Enable IPv6 traffic over BGP Peer. If not specified, it is disabled by default.
  final pulumi.Input<bool> enableIpv6;
  /// Name of the interface the BGP peer is associated with.
  final pulumi.Input<String> interfaceName;
  /// IP address of the interface inside Google Cloud Platform. Only IPv4 is supported.
  final pulumi.Input<String> ipAddress;
  /// IPv6 address of the interface inside Google Cloud Platform.
  final pulumi.Input<String> ipv6NexthopAddress;
  /// The resource that configures and manages this BGP peer. - MANAGED_BY_USER is the default value and can be managed by you or other users - MANAGED_BY_ATTACHMENT is a BGP peer that is configured and managed by Cloud Interconnect, specifically by an InterconnectAttachment of type PARTNER. Google automatically creates, updates, and deletes this type of BGP peer when the PARTNER InterconnectAttachment is created, updated, or deleted.
  final pulumi.Input<String> managementType;
  /// Present if MD5 authentication is enabled for the peering. Must be the name of one of the entries in the Router.md5_authentication_keys. The field must comply with RFC1035.
  final pulumi.Input<String> md5AuthenticationKeyName;
  /// Name of this BGP peer. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String> name;
  /// Peer BGP Autonomous System Number (ASN). Each BGP interface may use a different value.
  final pulumi.Input<int> peerAsn;
  /// IP address of the BGP interface outside Google Cloud Platform. Only IPv4 is supported.
  final pulumi.Input<String> peerIpAddress;
  /// IPv6 address of the BGP interface outside Google Cloud Platform.
  final pulumi.Input<String> peerIpv6NexthopAddress;
  /// URI of the VM instance that is used as third-party router appliances such as Next Gen Firewalls, Virtual Routers, or Router Appliances. The VM instance must be located in zones contained in the same region as this Cloud Router. The VM instance is the peer side of the BGP session.
  final pulumi.Input<String> routerApplianceInstance;

  /// Creates a new [RouterBgpPeerResponseComputeV1].
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
  /// [managementType] The resource that configures and manages this BGP peer. - MANAGED_BY_USER is the default value and can be managed by you or other users - MANAGED_BY_ATTACHMENT is a BGP peer that is configured and managed by Cloud Interconnect, specifically by an InterconnectAttachment of type PARTNER. Google automatically creates, updates, and deletes this type of BGP peer when the PARTNER InterconnectAttachment is created, updated, or deleted.
  /// [md5AuthenticationKeyName] Present if MD5 authentication is enabled for the peering. Must be the name of one of the entries in the Router.md5_authentication_keys. The field must comply with RFC1035.
  /// [name] Name of this BGP peer. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [peerAsn] Peer BGP Autonomous System Number (ASN). Each BGP interface may use a different value.
  /// [peerIpAddress] IP address of the BGP interface outside Google Cloud Platform. Only IPv4 is supported.
  /// [peerIpv6NexthopAddress] IPv6 address of the BGP interface outside Google Cloud Platform.
  /// [routerApplianceInstance] URI of the VM instance that is used as third-party router appliances such as Next Gen Firewalls, Virtual Routers, or Router Appliances. The VM instance must be located in zones contained in the same region as this Cloud Router. The VM instance is the peer side of the BGP session.
  const RouterBgpPeerResponseComputeV1({
    required this.advertiseMode,
    required this.advertisedGroups,
    required this.advertisedIpRanges,
    required this.advertisedRoutePriority,
    required this.bfd,
    required this.customLearnedIpRanges,
    required this.customLearnedRoutePriority,
    required this.enable,
    required this.enableIpv6,
    required this.interfaceName,
    required this.ipAddress,
    required this.ipv6NexthopAddress,
    required this.managementType,
    required this.md5AuthenticationKeyName,
    required this.name,
    required this.peerAsn,
    required this.peerIpAddress,
    required this.peerIpv6NexthopAddress,
    required this.routerApplianceInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseMode': advertiseMode,
      'advertisedGroups': advertisedGroups,
      'advertisedIpRanges': pulumi.Input.mapInputValue<List<RouterAdvertisedIpRangeResponseComputeV1>, List<Map<String, dynamic>>>(advertisedIpRanges, (value) => pulumi.Input.encodeList<RouterAdvertisedIpRangeResponseComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'advertisedRoutePriority': advertisedRoutePriority,
      'bfd': pulumi.Input.mapInputValue<RouterBgpPeerBfdResponseComputeV1, Map<String, dynamic>>(bfd, (value) => value.toMap()),
      'customLearnedIpRanges': pulumi.Input.mapInputValue<List<RouterBgpPeerCustomLearnedIpRangeResponseComputeV1>, List<Map<String, dynamic>>>(customLearnedIpRanges, (value) => pulumi.Input.encodeList<RouterBgpPeerCustomLearnedIpRangeResponseComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customLearnedRoutePriority': customLearnedRoutePriority,
      'enable': enable,
      'enableIpv6': enableIpv6,
      'interfaceName': interfaceName,
      'ipAddress': ipAddress,
      'ipv6NexthopAddress': ipv6NexthopAddress,
      'managementType': managementType,
      'md5AuthenticationKeyName': md5AuthenticationKeyName,
      'name': name,
      'peerAsn': peerAsn,
      'peerIpAddress': peerIpAddress,
      'peerIpv6NexthopAddress': peerIpv6NexthopAddress,
      'routerApplianceInstance': routerApplianceInstance,
    };
  }

  factory RouterBgpPeerResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return RouterBgpPeerResponseComputeV1(
      advertiseMode: pulumi.Input.fromValue(map['advertiseMode'] as String),
      advertisedGroups: pulumi.Input.fromValue((map['advertisedGroups'] as List).cast<String>()),
      advertisedIpRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<RouterAdvertisedIpRangeResponseComputeV1>(map['advertisedIpRanges']!, (value) => RouterAdvertisedIpRangeResponseComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
      advertisedRoutePriority: pulumi.Input.fromValue(map['advertisedRoutePriority'] as int),
      bfd: pulumi.Input.fromValue(RouterBgpPeerBfdResponseComputeV1.fromMap((map['bfd']! as Map).cast<String, dynamic>())),
      customLearnedIpRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<RouterBgpPeerCustomLearnedIpRangeResponseComputeV1>(map['customLearnedIpRanges']!, (value) => RouterBgpPeerCustomLearnedIpRangeResponseComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
      customLearnedRoutePriority: pulumi.Input.fromValue(map['customLearnedRoutePriority'] as int),
      enable: pulumi.Input.fromValue(map['enable'] as String),
      enableIpv6: pulumi.Input.fromValue(map['enableIpv6'] as bool),
      interfaceName: pulumi.Input.fromValue(map['interfaceName'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      ipv6NexthopAddress: pulumi.Input.fromValue(map['ipv6NexthopAddress'] as String),
      managementType: pulumi.Input.fromValue(map['managementType'] as String),
      md5AuthenticationKeyName: pulumi.Input.fromValue(map['md5AuthenticationKeyName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      peerAsn: pulumi.Input.fromValue(map['peerAsn'] as int),
      peerIpAddress: pulumi.Input.fromValue(map['peerIpAddress'] as String),
      peerIpv6NexthopAddress: pulumi.Input.fromValue(map['peerIpv6NexthopAddress'] as String),
      routerApplianceInstance: pulumi.Input.fromValue(map['routerApplianceInstance'] as String),
    );
  }
}
