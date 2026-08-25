// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_params.dart';

/// Input properties used for looking up and filtering Network resources.
class NetworkState {
  /// When set to `true`, the network is created in "auto subnet mode" and
  /// it will create a subnet for each region automatically across the
  /// `10.128.0.0/9` address range.
  /// When set to `false`, the network is created in "custom subnet mode" so
  /// the user can explicitly connect subnetwork resources.
  final pulumi.Input<bool?>? autoCreateSubnetworks;
  /// Enables/disables the comparison of MED across routes with different Neighbor ASNs.
  /// This value can only be set if the --bgp-best-path-selection-mode is STANDARD
  final pulumi.Input<bool?>? bgpAlwaysCompareMed;
  /// The BGP best selection algorithm to be employed. MODE can be LEGACY or STANDARD.
  /// Possible values are: `LEGACY`, `STANDARD`.
  final pulumi.Input<String?>? bgpBestPathSelectionMode;
  /// Choice of the behavior of inter-regional cost and MED in the BPS algorithm.
  /// Possible values are: `DEFAULT`, `ADD_COST_TO_MED`.
  final pulumi.Input<String?>? bgpInterRegionCost;
  /// If set to `true`, the `bgpAlwaysCompareMed` field will be cleared.
  /// If set to `false` (the default), `bgpAlwaysCompareMed` will be set to the value specified in the configuration.
  final pulumi.Input<bool?>? deleteBgpAlwaysCompareMed;
  /// If set to `true`, default routes (`0.0.0.0/0`) will be deleted
  /// immediately after network creation. Defaults to `false`.
  final pulumi.Input<bool?>? deleteDefaultRoutesOnCreate;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource. The resource must be
  /// recreated to modify this field.
  final pulumi.Input<String?>? description;
  /// Enable ULA internal ipv6 on this network. Enabling this feature will assign
  /// a /48 from google defined ULA prefix fd20::/20.
  final pulumi.Input<bool?>? enableUlaInternalIpv6;
  /// The gateway address for default routing out of the network. This value
  /// is selected by GCP.
  final pulumi.Input<String?>? gatewayIpv4;
  /// When enabling ula internal ipv6, caller optionally can specify the /48 range
  /// they want from the google defined ULA prefix fd20::/20. The input must be a
  /// valid /48 ULA IPv6 address and must be within the fd20::/20. Operation will
  /// fail if the speficied /48 is already in used by another resource.
  /// If the field is not speficied, then a /48 range will be randomly allocated from fd20::/20 and returned via this field.
  final pulumi.Input<String?>? internalIpv6Range;
  /// Maximum Transmission Unit in bytes. The default value is 1460 bytes.
  /// The minimum value for this field is 1300 and the maximum value is 8896 bytes (jumbo frames).
  /// Note that packets larger than 1500 bytes (standard Ethernet) can be subject to TCP-MSS clamping or dropped
  /// with an ICMP `Fragmentation-Needed` message if the packets are routed to the Internet or other VPCs
  /// with varying MTUs.
  final pulumi.Input<int?>? mtu;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String?>? name;
  /// Set the order that Firewall Rules and Firewall Policies are evaluated.
  /// Default value is `AFTER_CLASSIC_FIREWALL`.
  /// Possible values are: `BEFORE_CLASSIC_FIREWALL`, `AFTER_CLASSIC_FIREWALL`.
  final pulumi.Input<String?>? networkFirewallPolicyEnforcementOrder;
  /// The unique identifier for the resource. This identifier is defined by the server.
  final pulumi.Input<String?>? networkId;
  /// A full or partial URL of the network profile to apply to this network.
  /// This field can be set only at resource creation time. For example, the
  /// following are valid URLs:
  /// * https://www.googleapis.com/compute/v1/projects/{projectId}/global/networkProfiles/{network_profile_name}
  /// * projects/{projectId}/global/networkProfiles/{network_profile_name}
  final pulumi.Input<String?>? networkProfile;
  /// (Deprecated)
  /// The unique identifier for the resource. This identifier is defined by the server.
  final pulumi.Input<String?>? numericId;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<NetworkParams?>? params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The network-wide routing mode to use. If set to `REGIONAL`, this
  /// network's cloud routers will only advertise routes with subnetworks
  /// of this network in the same region as the router. If set to `GLOBAL`,
  /// this network's cloud routers will advertise routes with all
  /// subnetworks of this network, across regions.
  /// Possible values are: `REGIONAL`, `GLOBAL`.
  final pulumi.Input<String?>? routingMode;
  /// The URI of the created resource.
  final pulumi.Input<String?>? selfLink;

  /// Creates a new [NetworkState].
  /// [autoCreateSubnetworks] When set to `true`, the network is created in "auto subnet mode" and
  /// [bgpAlwaysCompareMed] Enables/disables the comparison of MED across routes with different Neighbor ASNs.
  /// [bgpBestPathSelectionMode] The BGP best selection algorithm to be employed. MODE can be LEGACY or STANDARD.
  /// [bgpInterRegionCost] Choice of the behavior of inter-regional cost and MED in the BPS algorithm.
  /// [deleteBgpAlwaysCompareMed] If set to `true`, the `bgpAlwaysCompareMed` field will be cleared.
  /// [deleteDefaultRoutesOnCreate] If set to `true`, default routes (`0.0.0.0/0`) will be deleted
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource. The resource must be
  /// [enableUlaInternalIpv6] Enable ULA internal ipv6 on this network. Enabling this feature will assign
  /// [gatewayIpv4] The gateway address for default routing out of the network. This value
  /// [internalIpv6Range] When enabling ula internal ipv6, caller optionally can specify the /48 range
  /// [mtu] Maximum Transmission Unit in bytes. The default value is 1460 bytes.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [networkFirewallPolicyEnforcementOrder] Set the order that Firewall Rules and Firewall Policies are evaluated.
  /// [networkId] The unique identifier for the resource. This identifier is defined by the server.
  /// [networkProfile] A full or partial URL of the network profile to apply to this network.
  /// [numericId] (Deprecated)
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [project] The ID of the project in which the resource belongs.
  /// [routingMode] The network-wide routing mode to use. If set to `REGIONAL`, this
  /// [selfLink] The URI of the created resource.
  const NetworkState({
    this.autoCreateSubnetworks,
    this.bgpAlwaysCompareMed,
    this.bgpBestPathSelectionMode,
    this.bgpInterRegionCost,
    this.deleteBgpAlwaysCompareMed,
    this.deleteDefaultRoutesOnCreate,
    this.deletionPolicy,
    this.description,
    this.enableUlaInternalIpv6,
    this.gatewayIpv4,
    this.internalIpv6Range,
    this.mtu,
    this.name,
    this.networkFirewallPolicyEnforcementOrder,
    this.networkId,
    this.networkProfile,
    this.numericId,
    this.params,
    this.project,
    this.routingMode,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreateSubnetworks': ?autoCreateSubnetworks,
      'bgpAlwaysCompareMed': ?bgpAlwaysCompareMed,
      'bgpBestPathSelectionMode': ?bgpBestPathSelectionMode,
      'bgpInterRegionCost': ?bgpInterRegionCost,
      'deleteBgpAlwaysCompareMed': ?deleteBgpAlwaysCompareMed,
      'deleteDefaultRoutesOnCreate': ?deleteDefaultRoutesOnCreate,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'enableUlaInternalIpv6': ?enableUlaInternalIpv6,
      'gatewayIpv4': ?gatewayIpv4,
      'internalIpv6Range': ?internalIpv6Range,
      'mtu': ?mtu,
      'name': ?name,
      'networkFirewallPolicyEnforcementOrder': ?networkFirewallPolicyEnforcementOrder,
      'networkId': ?networkId,
      'networkProfile': ?networkProfile,
      'numericId': ?numericId,
      'params': ?pulumi.Input.mapOptionalInputValue<NetworkParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'project': ?project,
      'routingMode': ?routingMode,
      'selfLink': ?selfLink,
    };
  }

  factory NetworkState.fromMap(Map<String, dynamic> map) {
    return NetworkState(
      autoCreateSubnetworks: (() { final guardedValue = map['autoCreateSubnetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bgpAlwaysCompareMed: (() { final guardedValue = map['bgpAlwaysCompareMed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bgpBestPathSelectionMode: (() { final guardedValue = map['bgpBestPathSelectionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpInterRegionCost: (() { final guardedValue = map['bgpInterRegionCost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteBgpAlwaysCompareMed: (() { final guardedValue = map['deleteBgpAlwaysCompareMed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deleteDefaultRoutesOnCreate: (() { final guardedValue = map['deleteDefaultRoutesOnCreate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableUlaInternalIpv6: (() { final guardedValue = map['enableUlaInternalIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gatewayIpv4: (() { final guardedValue = map['gatewayIpv4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internalIpv6Range: (() { final guardedValue = map['internalIpv6Range']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkFirewallPolicyEnforcementOrder: (() { final guardedValue = map['networkFirewallPolicyEnforcementOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numericId: (() { final guardedValue = map['numericId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingMode: (() { final guardedValue = map['routingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
