// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouterInterfaceResponseComputeBeta {
  /// IP address and range of the interface. The IP range must be in the RFC3927 link-local IP address space. The value must be a CIDR-formatted string, for example: 169.254.0.1/30. NOTE: Do not truncate the address as it represents the IP address of the interface.
  final pulumi.Input<String> ipRange;
  /// IP version of this interface.
  final pulumi.Input<String> ipVersion;
  /// URI of the linked Interconnect attachment. It must be in the same region as the router. Each interface can have one linked resource, which can be a VPN tunnel, an Interconnect attachment, or a subnetwork.
  final pulumi.Input<String> linkedInterconnectAttachment;
  /// URI of the linked VPN tunnel, which must be in the same region as the router. Each interface can have one linked resource, which can be a VPN tunnel, an Interconnect attachment, or a subnetwork.
  final pulumi.Input<String> linkedVpnTunnel;
  /// The resource that configures and manages this interface. - MANAGED_BY_USER is the default value and can be managed directly by users. - MANAGED_BY_ATTACHMENT is an interface that is configured and managed by Cloud Interconnect, specifically, by an InterconnectAttachment of type PARTNER. Google automatically creates, updates, and deletes this type of interface when the PARTNER InterconnectAttachment is created, updated, or deleted.
  final pulumi.Input<String> managementType;
  /// Name of this interface entry. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String> name;
  /// The regional private internal IP address that is used to establish BGP sessions to a VM instance acting as a third-party Router Appliance, such as a Next Gen Firewall, a Virtual Router, or an SD-WAN VM.
  final pulumi.Input<String> privateIpAddress;
  /// Name of the interface that will be redundant with the current interface you are creating. The redundantInterface must belong to the same Cloud Router as the interface here. To establish the BGP session to a Router Appliance VM, you must create two BGP peers. The two BGP peers must be attached to two separate interfaces that are redundant with each other. The redundant_interface must be 1-63 characters long, and comply with RFC1035. Specifically, the redundant_interface must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String> redundantInterface;
  /// The URI of the subnetwork resource that this interface belongs to, which must be in the same region as the Cloud Router. When you establish a BGP session to a VM instance using this interface, the VM instance must belong to the same subnetwork as the subnetwork specified here.
  final pulumi.Input<String> subnetwork;

  /// Creates a new [RouterInterfaceResponseComputeBeta].
  /// [ipRange] IP address and range of the interface. The IP range must be in the RFC3927 link-local IP address space. The value must be a CIDR-formatted string, for example: 169.254.0.1/30. NOTE: Do not truncate the address as it represents the IP address of the interface.
  /// [ipVersion] IP version of this interface.
  /// [linkedInterconnectAttachment] URI of the linked Interconnect attachment. It must be in the same region as the router. Each interface can have one linked resource, which can be a VPN tunnel, an Interconnect attachment, or a subnetwork.
  /// [linkedVpnTunnel] URI of the linked VPN tunnel, which must be in the same region as the router. Each interface can have one linked resource, which can be a VPN tunnel, an Interconnect attachment, or a subnetwork.
  /// [managementType] The resource that configures and manages this interface. - MANAGED_BY_USER is the default value and can be managed directly by users. - MANAGED_BY_ATTACHMENT is an interface that is configured and managed by Cloud Interconnect, specifically, by an InterconnectAttachment of type PARTNER. Google automatically creates, updates, and deletes this type of interface when the PARTNER InterconnectAttachment is created, updated, or deleted.
  /// [name] Name of this interface entry. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [privateIpAddress] The regional private internal IP address that is used to establish BGP sessions to a VM instance acting as a third-party Router Appliance, such as a Next Gen Firewall, a Virtual Router, or an SD-WAN VM.
  /// [redundantInterface] Name of the interface that will be redundant with the current interface you are creating. The redundantInterface must belong to the same Cloud Router as the interface here. To establish the BGP session to a Router Appliance VM, you must create two BGP peers. The two BGP peers must be attached to two separate interfaces that are redundant with each other. The redundant_interface must be 1-63 characters long, and comply with RFC1035. Specifically, the redundant_interface must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [subnetwork] The URI of the subnetwork resource that this interface belongs to, which must be in the same region as the Cloud Router. When you establish a BGP session to a VM instance using this interface, the VM instance must belong to the same subnetwork as the subnetwork specified here.
  RouterInterfaceResponseComputeBeta({
    required this.ipRange,
    required this.ipVersion,
    required this.linkedInterconnectAttachment,
    required this.linkedVpnTunnel,
    required this.managementType,
    required this.name,
    required this.privateIpAddress,
    required this.redundantInterface,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipRange': ipRange,
      'ipVersion': ipVersion,
      'linkedInterconnectAttachment': linkedInterconnectAttachment,
      'linkedVpnTunnel': linkedVpnTunnel,
      'managementType': managementType,
      'name': name,
      'privateIpAddress': privateIpAddress,
      'redundantInterface': redundantInterface,
      'subnetwork': subnetwork,
    };
  }

  factory RouterInterfaceResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return RouterInterfaceResponseComputeBeta(
      ipRange: (map['ipRange'] as String).input(),
      ipVersion: (map['ipVersion'] as String).input(),
      linkedInterconnectAttachment: (map['linkedInterconnectAttachment'] as String).input(),
      linkedVpnTunnel: (map['linkedVpnTunnel'] as String).input(),
      managementType: (map['managementType'] as String).input(),
      name: (map['name'] as String).input(),
      privateIpAddress: (map['privateIpAddress'] as String).input(),
      redundantInterface: (map['redundantInterface'] as String).input(),
      subnetwork: (map['subnetwork'] as String).input(),
    );
  }
}

