// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_router_interface_router_interface_args_doc}
/// The set of arguments for RouterInterface.
/// {@endtemplate}
/// {@macro pulumi_compute_router_interface_router_interface_args_doc}
class RouterInterfaceArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The name or resource link to the
  /// VLAN interconnect for this interface. Changing this forces a new interface to
  /// be created. Only one of `vpnTunnel`, `interconnectAttachment` or `subnetwork` can be specified.
  final pulumi.Input<String>? interconnectAttachment;
  /// IP address and range of the interface. The IP range must be
  /// in the RFC3927 link-local IP space. Changing this forces a new interface to be created.
  final pulumi.Input<String>? ipRange;
  /// IP version of this interface. Can be either IPV4 or IPV6.
  final pulumi.Input<String>? ipVersion;
  /// A unique name for the interface, required by GCE. Changing
  /// this forces a new interface to be created.
  final pulumi.Input<String>? name;
  /// The regional private internal IP address that is used
  /// to establish BGP sessions to a VM instance acting as a third-party Router Appliance. Changing this forces a new interface to be created.
  final pulumi.Input<String>? privateIpAddress;
  /// The ID of the project in which this interface's routerbelongs.
  /// If it is not provided, the provider project is used. Changing this forces a new interface to be created.
  final pulumi.Input<String>? project;
  /// The name of the interface that is redundant to
  /// this interface. Changing this forces a new interface to be created.
  final pulumi.Input<String>? redundantInterface;
  /// The region this interface's router sits in.
  /// If not specified, the project region will be used. Changing this forces a new interface to be created.
  final pulumi.Input<String>? region;
  /// The name of the router this interface will be attached to.
  /// Changing this forces a new interface to be created.
  ///
  /// In addition to the above required fields, a router interface must have specified either `ipRange` or exactly one of `vpnTunnel`, `interconnectAttachment` or `subnetwork`, or both.
  ///
  /// - - -
  final pulumi.Input<String> router;
  /// The URI of the subnetwork resource that this interface
  /// belongs to, which must be in the same region as the Cloud Router. When you establish a BGP session to a VM instance using this interface, the VM instance must belong to the same subnetwork as the subnetwork specified here. Changing this forces a new interface to be created. Only one of `vpnTunnel`, `interconnectAttachment` or `subnetwork` can be specified.
  final pulumi.Input<String>? subnetwork;
  /// The name or resource link to the VPN tunnel this
  /// interface will be linked to. Changing this forces a new interface to be created. Only
  /// one of `vpnTunnel`, `interconnectAttachment` or `subnetwork` can be specified.
  final pulumi.Input<String>? vpnTunnel;

  /// Creates a new [RouterInterfaceArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [interconnectAttachment] The name or resource link to the
  /// [ipRange] IP address and range of the interface. The IP range must be
  /// [ipVersion] IP version of this interface. Can be either IPV4 or IPV6.
  /// [name] A unique name for the interface, required by GCE. Changing
  /// [privateIpAddress] The regional private internal IP address that is used
  /// [project] The ID of the project in which this interface's routerbelongs.
  /// [redundantInterface] The name of the interface that is redundant to
  /// [region] The region this interface's router sits in.
  /// [router] The name of the router this interface will be attached to.
  /// [subnetwork] The URI of the subnetwork resource that this interface
  /// [vpnTunnel] The name or resource link to the VPN tunnel this
  const RouterInterfaceArgs({
    this.deletionPolicy,
    this.interconnectAttachment,
    this.ipRange,
    this.ipVersion,
    this.name,
    this.privateIpAddress,
    this.project,
    this.redundantInterface,
    this.region,
    required this.router,
    this.subnetwork,
    this.vpnTunnel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'interconnectAttachment': ?interconnectAttachment,
      'ipRange': ?ipRange,
      'ipVersion': ?ipVersion,
      'name': ?name,
      'privateIpAddress': ?privateIpAddress,
      'project': ?project,
      'redundantInterface': ?redundantInterface,
      'region': ?region,
      'router': router,
      'subnetwork': ?subnetwork,
      'vpnTunnel': ?vpnTunnel,
    };
  }

  factory RouterInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return RouterInterfaceArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interconnectAttachment: (() { final guardedValue = map['interconnectAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRange: (() { final guardedValue = map['ipRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redundantInterface: (() { final guardedValue = map['redundantInterface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      router: pulumi.Input.fromValue(map['router'] as String),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnTunnel: (() { final guardedValue = map['vpnTunnel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
