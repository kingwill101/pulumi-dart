// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_l2_forwarding.dart';

/// {@template pulumi_compute_interconnect_attachment_interconnect_attachment_args_doc}
/// The set of arguments for InterconnectAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_interconnect_attachment_interconnect_attachment_args_doc}
class InterconnectAttachmentArgs {
  /// Whether the VLAN attachment is enabled or disabled.  When using
  /// PARTNER type this will Pre-Activate the interconnect attachment
  final pulumi.Input<bool>? adminEnabled;
  /// Provisioned bandwidth capacity for the interconnect attachment.
  /// For attachments of type DEDICATED, the user can set the bandwidth.
  /// For attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth.
  /// Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED,
  /// Defaults to BPS_10G
  /// Possible values are: `BPS_50M`, `BPS_100M`, `BPS_200M`, `BPS_300M`, `BPS_400M`, `BPS_500M`, `BPS_1G`, `BPS_2G`, `BPS_5G`, `BPS_10G`, `BPS_20G`, `BPS_50G`, `BPS_100G`, `BPS_400G`.
  final pulumi.Input<String>? bandwidth;
  /// Single IPv4 address + prefix length to be configured on the cloud router interface for this
  /// interconnect attachment. Example: 203.0.113.1/29
  final pulumi.Input<String>? candidateCloudRouterIpAddress;
  /// Single IPv6 address + prefix length to be configured on the cloud router interface for this
  /// interconnect attachment. Example: 2001:db8::1/125
  final pulumi.Input<String>? candidateCloudRouterIpv6Address;
  /// Single IPv4 address + prefix length to be configured on the customer router interface for this
  /// interconnect attachment. Example: 203.0.113.2/29
  final pulumi.Input<String>? candidateCustomerRouterIpAddress;
  /// Single IPv6 address + prefix length to be configured on the customer router interface for this
  /// interconnect attachment. Example: 2001:db8::2/125
  final pulumi.Input<String>? candidateCustomerRouterIpv6Address;
  /// Up to 16 candidate prefixes that can be used to restrict the allocation
  /// of cloudRouterIpAddress and customerRouterIpAddress for this attachment.
  /// All prefixes must be within link-local address space (169.254.0.0/16)
  /// and must be /29 or shorter (/28, /27, etc). Google will attempt to select
  /// an unused /29 from the supplied candidate prefix(es). The request will
  /// fail if all possible /29s are in use on Google's edge. If not supplied,
  /// Google will randomly select an unused /29 from all of link-local space.
  final pulumi.Input<List<String>>? candidateSubnets;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Desired availability domain for the attachment. Only available for type
  /// PARTNER, at creation time. For improved reliability, customers should
  /// configure a pair of attachments with one per availability domain. The
  /// selected availability domain will be provided to the Partner via the
  /// pairing key so that the provisioned circuit will lie in the specified
  /// domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY.
  final pulumi.Input<String>? edgeAvailabilityDomain;
  /// Indicates the user-supplied encryption option of this interconnect
  /// attachment. Can only be specified at attachment creation for PARTNER or
  /// DEDICATED attachments.
  /// * NONE - This is the default value, which means that the VLAN attachment
  /// carries unencrypted traffic. VMs are able to send traffic to, or receive
  /// traffic from, such a VLAN attachment.
  /// * IPSEC - The VLAN attachment carries only encrypted traffic that is
  /// encrypted by an IPsec device, such as an HA VPN gateway or third-party
  /// IPsec VPN. VMs cannot directly send traffic to, or receive traffic from,
  /// such a VLAN attachment. To use HA VPN over Cloud Interconnect, the VLAN
  /// attachment must be created with this option.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `IPSEC`.
  final pulumi.Input<String>? encryption;
  /// URL of the underlying Interconnect object that this attachment's
  /// traffic will traverse through. Required if type is DEDICATED, must not
  /// be set if type is PARTNER.
  final pulumi.Input<String>? interconnect;
  /// URL of addresses that have been reserved for the interconnect attachment,
  /// Used only for interconnect attachment that has the encryption option as
  /// IPSEC.
  /// The addresses must be RFC 1918 IP address ranges. When creating HA VPN
  /// gateway over the interconnect attachment, if the attachment is configured
  /// to use an RFC 1918 IP address, then the VPN gateway's IP address will be
  /// allocated from the IP address range specified here.
  /// For example, if the HA VPN gateway's interface 0 is paired to this
  /// interconnect attachment, then an RFC 1918 IP address for the VPN gateway
  /// interface 0 will be allocated from the IP address specified for this
  /// interconnect attachment.
  /// If this field is not specified for interconnect attachment that has
  /// encryption option as IPSEC, later on when creating HA VPN gateway on this
  /// interconnect attachment, the HA VPN gateway's IP address will be
  /// allocated from regional external IP address pool.
  final pulumi.Input<List<String>>? ipsecInternalAddresses;
  /// L2 Interconnect Attachment related configuration.
  /// Structure is documented below.
  final pulumi.Input<InterconnectAttachmentL2Forwarding>? l2Forwarding;
  /// Labels for this resource. These can only be added or modified by the setLabels
  /// method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Maximum Transmission Unit (MTU), in bytes, of packets passing through this interconnect attachment.
  /// Valid values are 1440, 1460, 1500, and 8896. If not specified, the value will default to 1440.
  final pulumi.Input<String>? mtu;
  /// Name of the resource. Provided by the client when the resource is created. The
  /// name must be 1-63 characters long, and comply with RFC1035. Specifically, the
  /// name must be 1-63 characters long and match the regular expression
  /// `a-z?` which means the first character must be a
  /// lowercase letter, and all following characters must be a dash, lowercase
  /// letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  ///
  ///
  ///
  /// &lt;a name="nested_l2_forwarding"&gt;&lt;/a&gt;The `l2_forwarding` block supports:
  final pulumi.Input<String>? project;
  /// Region where the regional interconnect attachment resides.
  final pulumi.Input<String>? region;
  /// URL of the cloud router to be used for dynamic routing. This router must be in
  /// the same region as this InterconnectAttachment. The InterconnectAttachment will
  /// automatically connect the Interconnect to the network & region within which the
  /// Cloud Router is configured.
  final pulumi.Input<String>? router;
  /// The stack type for this interconnect attachment to identify whether the IPv6
  /// feature is enabled or not. If not specified, IPV4_ONLY will be used.
  /// This field can be both set at interconnect attachments creation and update
  /// interconnect attachment operations.
  /// Possible values are: `IPV4_IPV6`, `IPV4_ONLY`.
  final pulumi.Input<String>? stackType;
  /// Length of the IPv4 subnet mask. Allowed values: 29 (default), 30. The default value is 29,
  /// except for Cross-Cloud Interconnect connections that use an InterconnectRemoteLocation with a
  /// constraints.subnetLengthRange.min equal to 30. For example, connections that use an Azure
  /// remote location fall into this category. In these cases, the default value is 30, and
  /// requesting 29 returns an error. Where both 29 and 30 are allowed, 29 is preferred, because it
  /// gives Google Cloud Support more debugging visibility.
  final pulumi.Input<int>? subnetLength;
  /// The type of InterconnectAttachment you wish to create. Defaults to
  /// DEDICATED.
  /// Possible values are: `DEDICATED`, `PARTNER`, `PARTNER_PROVIDER`, `L2_DEDICATED`.
  final pulumi.Input<String>? type;
  /// The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4094. When
  /// using PARTNER type this will be managed upstream.
  final pulumi.Input<int>? vlanTag8021q;

  /// Creates a new [InterconnectAttachmentArgs].
  /// [adminEnabled] Whether the VLAN attachment is enabled or disabled.  When using
  /// [bandwidth] Provisioned bandwidth capacity for the interconnect attachment.
  /// [candidateCloudRouterIpAddress] Single IPv4 address + prefix length to be configured on the cloud router interface for this
  /// [candidateCloudRouterIpv6Address] Single IPv6 address + prefix length to be configured on the cloud router interface for this
  /// [candidateCustomerRouterIpAddress] Single IPv4 address + prefix length to be configured on the customer router interface for this
  /// [candidateCustomerRouterIpv6Address] Single IPv6 address + prefix length to be configured on the customer router interface for this
  /// [candidateSubnets] Up to 16 candidate prefixes that can be used to restrict the allocation
  /// [description] An optional description of this resource.
  /// [edgeAvailabilityDomain] Desired availability domain for the attachment. Only available for type
  /// [encryption] Indicates the user-supplied encryption option of this interconnect
  /// [interconnect] URL of the underlying Interconnect object that this attachment's
  /// [ipsecInternalAddresses] URL of addresses that have been reserved for the interconnect attachment,
  /// [l2Forwarding] L2 Interconnect Attachment related configuration.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels
  /// [mtu] Maximum Transmission Unit (MTU), in bytes, of packets passing through this interconnect attachment.
  /// [name] Name of the resource. Provided by the client when the resource is created. The
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where the regional interconnect attachment resides.
  /// [router] URL of the cloud router to be used for dynamic routing. This router must be in
  /// [stackType] The stack type for this interconnect attachment to identify whether the IPv6
  /// [subnetLength] Length of the IPv4 subnet mask. Allowed values: 29 (default), 30. The default value is 29,
  /// [type] The type of InterconnectAttachment you wish to create. Defaults to
  /// [vlanTag8021q] The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4094. When
  InterconnectAttachmentArgs({
    this.adminEnabled,
    this.bandwidth,
    this.candidateCloudRouterIpAddress,
    this.candidateCloudRouterIpv6Address,
    this.candidateCustomerRouterIpAddress,
    this.candidateCustomerRouterIpv6Address,
    this.candidateSubnets,
    this.description,
    this.edgeAvailabilityDomain,
    this.encryption,
    this.interconnect,
    this.ipsecInternalAddresses,
    this.l2Forwarding,
    this.labels,
    this.mtu,
    this.name,
    this.project,
    this.region,
    this.router,
    this.stackType,
    this.subnetLength,
    this.type,
    this.vlanTag8021q,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': ?adminEnabled,
      'bandwidth': ?bandwidth,
      'candidateCloudRouterIpAddress': ?candidateCloudRouterIpAddress,
      'candidateCloudRouterIpv6Address': ?candidateCloudRouterIpv6Address,
      'candidateCustomerRouterIpAddress': ?candidateCustomerRouterIpAddress,
      'candidateCustomerRouterIpv6Address': ?candidateCustomerRouterIpv6Address,
      'candidateSubnets': ?candidateSubnets,
      'description': ?description,
      'edgeAvailabilityDomain': ?edgeAvailabilityDomain,
      'encryption': ?encryption,
      'interconnect': ?interconnect,
      'ipsecInternalAddresses': ?ipsecInternalAddresses,
      'l2Forwarding': ?pulumi.Input.mapOptionalInputValue<InterconnectAttachmentL2Forwarding, Map<String, dynamic>>(l2Forwarding, (value) => value.toMap()),
      'labels': ?labels,
      'mtu': ?mtu,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'router': ?router,
      'stackType': ?stackType,
      'subnetLength': ?subnetLength,
      'type': ?type,
      'vlanTag8021q': ?vlanTag8021q,
    };
  }

  factory InterconnectAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentArgs(
      adminEnabled: (() { final guardedValue = map['adminEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      candidateCloudRouterIpAddress: (() { final guardedValue = map['candidateCloudRouterIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      candidateCloudRouterIpv6Address: (() { final guardedValue = map['candidateCloudRouterIpv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      candidateCustomerRouterIpAddress: (() { final guardedValue = map['candidateCustomerRouterIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      candidateCustomerRouterIpv6Address: (() { final guardedValue = map['candidateCustomerRouterIpv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      candidateSubnets: (() { final guardedValue = map['candidateSubnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edgeAvailabilityDomain: (() { final guardedValue = map['edgeAvailabilityDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interconnect: (() { final guardedValue = map['interconnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipsecInternalAddresses: (() { final guardedValue = map['ipsecInternalAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      l2Forwarding: (() { final guardedValue = map['l2Forwarding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InterconnectAttachmentL2Forwarding.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      router: (() { final guardedValue = map['router']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackType: (() { final guardedValue = map['stackType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetLength: (() { final guardedValue = map['subnetLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlanTag8021q: (() { final guardedValue = map['vlanTag8021q']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

