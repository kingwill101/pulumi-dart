// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_bandwidth_compute_beta.dart';
import 'interconnect_attachment_edge_availability_domain_compute_beta.dart';
import 'interconnect_attachment_encryption_compute_beta.dart';
import 'interconnect_attachment_partner_metadata_compute_beta.dart';
import 'interconnect_attachment_stack_type_compute_beta.dart';
import 'interconnect_attachment_type_compute_beta.dart';

/// {@template pulumi_compute_beta_interconnect_attachment_compute_beta_args_doc}
/// The set of arguments for InterconnectAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_interconnect_attachment_compute_beta_args_doc}
class InterconnectAttachmentComputeBetaArgs {
  /// Determines whether this Attachment will carry packets. Not present for PARTNER_PROVIDER.
  final pulumi.Input<bool>? adminEnabled;
  /// Provisioned bandwidth capacity for the interconnect attachment. For attachments of type DEDICATED, the user can set the bandwidth. For attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth. Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED, and can take one of the following values: - BPS_50M: 50 Mbit/s - BPS_100M: 100 Mbit/s - BPS_200M: 200 Mbit/s - BPS_300M: 300 Mbit/s - BPS_400M: 400 Mbit/s - BPS_500M: 500 Mbit/s - BPS_1G: 1 Gbit/s - BPS_2G: 2 Gbit/s - BPS_5G: 5 Gbit/s - BPS_10G: 10 Gbit/s - BPS_20G: 20 Gbit/s - BPS_50G: 50 Gbit/s
  final pulumi.Input<InterconnectAttachmentBandwidthComputeBeta>? bandwidth;
  /// This field is not available.
  final pulumi.Input<List<String>>? candidateIpv6Subnets;
  /// Up to 16 candidate prefixes that can be used to restrict the allocation of cloudRouterIpAddress and customerRouterIpAddress for this attachment. All prefixes must be within link-local address space (169.254.0.0/16) and must be /29 or shorter (/28, /27, etc). Google will attempt to select an unused /29 from the supplied candidate prefix(es). The request will fail if all possible /29s are in use on Google's edge. If not supplied, Google will randomly select an unused /29 from all of link-local space.
  final pulumi.Input<List<String>>? candidateSubnets;
  /// This field is not available.
  final pulumi.Input<String>? cloudRouterIpv6InterfaceId;
  /// This field is not available.
  final pulumi.Input<String>? customerRouterIpv6InterfaceId;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Desired availability domain for the attachment. Only available for type PARTNER, at creation time, and can take one of the following values: - AVAILABILITY_DOMAIN_ANY - AVAILABILITY_DOMAIN_1 - AVAILABILITY_DOMAIN_2 For improved reliability, customers should configure a pair of attachments, one per availability domain. The selected availability domain will be provided to the Partner via the pairing key, so that the provisioned circuit will lie in the specified domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY.
  final pulumi.Input<InterconnectAttachmentEdgeAvailabilityDomainComputeBeta>? edgeAvailabilityDomain;
  /// Indicates the user-supplied encryption option of this VLAN attachment (interconnectAttachment). Can only be specified at attachment creation for PARTNER or DEDICATED attachments. Possible values are: - NONE - This is the default value, which means that the VLAN attachment carries unencrypted traffic. VMs are able to send traffic to, or receive traffic from, such a VLAN attachment. - IPSEC - The VLAN attachment carries only encrypted traffic that is encrypted by an IPsec device, such as an HA VPN gateway or third-party IPsec VPN. VMs cannot directly send traffic to, or receive traffic from, such a VLAN attachment. To use *HA VPN over Cloud Interconnect*, the VLAN attachment must be created with this option.
  final pulumi.Input<InterconnectAttachmentEncryptionComputeBeta>? encryption;
  /// URL of the underlying Interconnect object that this attachment's traffic will traverse through.
  final pulumi.Input<String>? interconnect;
  /// A list of URLs of addresses that have been reserved for the VLAN attachment. Used only for the VLAN attachment that has the encryption option as IPSEC. The addresses must be regional internal IP address ranges. When creating an HA VPN gateway over the VLAN attachment, if the attachment is configured to use a regional internal IP address, then the VPN gateway's IP address is allocated from the IP address range specified here. For example, if the HA VPN gateway's interface 0 is paired to this VLAN attachment, then a regional internal IP address for the VPN gateway interface 0 will be allocated from the IP address specified for this VLAN attachment. If this field is not specified when creating the VLAN attachment, then later on when creating an HA VPN gateway on this VLAN attachment, the HA VPN gateway's IP address is allocated from the regional external IP address pool.
  final pulumi.Input<List<String>>? ipsecInternalAddresses;
  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;
  /// Maximum Transmission Unit (MTU), in bytes, of packets passing through this interconnect attachment. Only 1440 and 1500 are allowed. If not specified, the value will default to 1440.
  final pulumi.Input<int>? mtu;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// [Output only for type PARTNER. Input only for PARTNER_PROVIDER. Not present for DEDICATED]. The opaque identifier of a PARTNER attachment used to initiate provisioning with a selected partner. Of the form "XXXXX/region/domain"
  final pulumi.Input<String>? pairingKey;
  /// Optional BGP ASN for the router supplied by a Layer 3 Partner if they configured BGP on behalf of the customer. Output only for PARTNER type, input only for PARTNER_PROVIDER, not available for DEDICATED.
  final pulumi.Input<String>? partnerAsn;
  /// Informational metadata about Partner attachments from Partners to display to customers. Output only for PARTNER type, mutable for PARTNER_PROVIDER, not available for DEDICATED.
  final pulumi.Input<InterconnectAttachmentPartnerMetadataComputeBeta>? partnerMetadata;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// URL of the Cloud Router to be used for dynamic routing. This router must be in the same region as this InterconnectAttachment. The InterconnectAttachment will automatically connect the Interconnect to the network & region within which the Cloud Router is configured.
  final pulumi.Input<String>? router;
  /// The stack type for this interconnect attachment to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used. This field can be both set at interconnect attachments creation and update interconnect attachment operations.
  final pulumi.Input<InterconnectAttachmentStackTypeComputeBeta>? stackType;
  /// Length of the IPv4 subnet mask. Allowed values: - 29 (default) - 30 The default value is 29, except for Cross-Cloud Interconnect connections that use an InterconnectRemoteLocation with a constraints.subnetLengthRange.min equal to 30. For example, connections that use an Azure remote location fall into this category. In these cases, the default value is 30, and requesting 29 returns an error. Where both 29 and 30 are allowed, 29 is preferred, because it gives Google Cloud Support more debugging visibility.
  final pulumi.Input<int>? subnetLength;
  /// The type of interconnect attachment this is, which can take one of the following values: - DEDICATED: an attachment to a Dedicated Interconnect. - PARTNER: an attachment to a Partner Interconnect, created by the customer. - PARTNER_PROVIDER: an attachment to a Partner Interconnect, created by the partner.
  final pulumi.Input<InterconnectAttachmentTypeComputeBeta>? type;
  /// The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4093. Only specified at creation time.
  final pulumi.Input<int>? vlanTag8021q;

  /// Creates a new [InterconnectAttachmentComputeBetaArgs].
  /// [adminEnabled] Determines whether this Attachment will carry packets. Not present for PARTNER_PROVIDER.
  /// [bandwidth] Provisioned bandwidth capacity for the interconnect attachment. For attachments of type DEDICATED, the user can set the bandwidth. For attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth. Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED, and can take one of the following values: - BPS_50M: 50 Mbit/s - BPS_100M: 100 Mbit/s - BPS_200M: 200 Mbit/s - BPS_300M: 300 Mbit/s - BPS_400M: 400 Mbit/s - BPS_500M: 500 Mbit/s - BPS_1G: 1 Gbit/s - BPS_2G: 2 Gbit/s - BPS_5G: 5 Gbit/s - BPS_10G: 10 Gbit/s - BPS_20G: 20 Gbit/s - BPS_50G: 50 Gbit/s
  /// [candidateIpv6Subnets] This field is not available.
  /// [candidateSubnets] Up to 16 candidate prefixes that can be used to restrict the allocation of cloudRouterIpAddress and customerRouterIpAddress for this attachment. All prefixes must be within link-local address space (169.254.0.0/16) and must be /29 or shorter (/28, /27, etc). Google will attempt to select an unused /29 from the supplied candidate prefix(es). The request will fail if all possible /29s are in use on Google's edge. If not supplied, Google will randomly select an unused /29 from all of link-local space.
  /// [cloudRouterIpv6InterfaceId] This field is not available.
  /// [customerRouterIpv6InterfaceId] This field is not available.
  /// [description] An optional description of this resource.
  /// [edgeAvailabilityDomain] Desired availability domain for the attachment. Only available for type PARTNER, at creation time, and can take one of the following values: - AVAILABILITY_DOMAIN_ANY - AVAILABILITY_DOMAIN_1 - AVAILABILITY_DOMAIN_2 For improved reliability, customers should configure a pair of attachments, one per availability domain. The selected availability domain will be provided to the Partner via the pairing key, so that the provisioned circuit will lie in the specified domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY.
  /// [encryption] Indicates the user-supplied encryption option of this VLAN attachment (interconnectAttachment). Can only be specified at attachment creation for PARTNER or DEDICATED attachments. Possible values are: - NONE - This is the default value, which means that the VLAN attachment carries unencrypted traffic. VMs are able to send traffic to, or receive traffic from, such a VLAN attachment. - IPSEC - The VLAN attachment carries only encrypted traffic that is encrypted by an IPsec device, such as an HA VPN gateway or third-party IPsec VPN. VMs cannot directly send traffic to, or receive traffic from, such a VLAN attachment. To use *HA VPN over Cloud Interconnect*, the VLAN attachment must be created with this option.
  /// [interconnect] URL of the underlying Interconnect object that this attachment's traffic will traverse through.
  /// [ipsecInternalAddresses] A list of URLs of addresses that have been reserved for the VLAN attachment. Used only for the VLAN attachment that has the encryption option as IPSEC. The addresses must be regional internal IP address ranges. When creating an HA VPN gateway over the VLAN attachment, if the attachment is configured to use a regional internal IP address, then the VPN gateway's IP address is allocated from the IP address range specified here. For example, if the HA VPN gateway's interface 0 is paired to this VLAN attachment, then a regional internal IP address for the VPN gateway interface 0 will be allocated from the IP address specified for this VLAN attachment. If this field is not specified when creating the VLAN attachment, then later on when creating an HA VPN gateway on this VLAN attachment, the HA VPN gateway's IP address is allocated from the regional external IP address pool.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  /// [mtu] Maximum Transmission Unit (MTU), in bytes, of packets passing through this interconnect attachment. Only 1440 and 1500 are allowed. If not specified, the value will default to 1440.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [pairingKey] [Output only for type PARTNER. Input only for PARTNER_PROVIDER. Not present for DEDICATED]. The opaque identifier of a PARTNER attachment used to initiate provisioning with a selected partner. Of the form "XXXXX/region/domain"
  /// [partnerAsn] Optional BGP ASN for the router supplied by a Layer 3 Partner if they configured BGP on behalf of the customer. Output only for PARTNER type, input only for PARTNER_PROVIDER, not available for DEDICATED.
  /// [partnerMetadata] Informational metadata about Partner attachments from Partners to display to customers. Output only for PARTNER type, mutable for PARTNER_PROVIDER, not available for DEDICATED.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [router] URL of the Cloud Router to be used for dynamic routing. This router must be in the same region as this InterconnectAttachment. The InterconnectAttachment will automatically connect the Interconnect to the network & region within which the Cloud Router is configured.
  /// [stackType] The stack type for this interconnect attachment to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used. This field can be both set at interconnect attachments creation and update interconnect attachment operations.
  /// [subnetLength] Length of the IPv4 subnet mask. Allowed values: - 29 (default) - 30 The default value is 29, except for Cross-Cloud Interconnect connections that use an InterconnectRemoteLocation with a constraints.subnetLengthRange.min equal to 30. For example, connections that use an Azure remote location fall into this category. In these cases, the default value is 30, and requesting 29 returns an error. Where both 29 and 30 are allowed, 29 is preferred, because it gives Google Cloud Support more debugging visibility.
  /// [type] The type of interconnect attachment this is, which can take one of the following values: - DEDICATED: an attachment to a Dedicated Interconnect. - PARTNER: an attachment to a Partner Interconnect, created by the customer. - PARTNER_PROVIDER: an attachment to a Partner Interconnect, created by the partner.
  /// [vlanTag8021q] The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4093. Only specified at creation time.
  InterconnectAttachmentComputeBetaArgs({
    this.adminEnabled,
    this.bandwidth,
    this.candidateIpv6Subnets,
    this.candidateSubnets,
    this.cloudRouterIpv6InterfaceId,
    this.customerRouterIpv6InterfaceId,
    this.description,
    this.edgeAvailabilityDomain,
    this.encryption,
    this.interconnect,
    this.ipsecInternalAddresses,
    this.labels,
    this.mtu,
    this.name,
    this.pairingKey,
    this.partnerAsn,
    this.partnerMetadata,
    this.project,
    required this.region,
    this.requestId,
    this.router,
    this.stackType,
    this.subnetLength,
    this.type,
    this.vlanTag8021q,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': ?adminEnabled,
      'bandwidth': ?pulumi.Input.mapOptionalInputValue<InterconnectAttachmentBandwidthComputeBeta, String>(bandwidth, (value) => value.wireValue),
      'candidateIpv6Subnets': ?candidateIpv6Subnets,
      'candidateSubnets': ?candidateSubnets,
      'cloudRouterIpv6InterfaceId': ?cloudRouterIpv6InterfaceId,
      'customerRouterIpv6InterfaceId': ?customerRouterIpv6InterfaceId,
      'description': ?description,
      'edgeAvailabilityDomain': ?pulumi.Input.mapOptionalInputValue<InterconnectAttachmentEdgeAvailabilityDomainComputeBeta, String>(edgeAvailabilityDomain, (value) => value.wireValue),
      'encryption': ?pulumi.Input.mapOptionalInputValue<InterconnectAttachmentEncryptionComputeBeta, String>(encryption, (value) => value.wireValue),
      'interconnect': ?interconnect,
      'ipsecInternalAddresses': ?ipsecInternalAddresses,
      'labels': ?labels,
      'mtu': ?mtu,
      'name': ?name,
      'pairingKey': ?pairingKey,
      'partnerAsn': ?partnerAsn,
      'partnerMetadata': ?pulumi.Input.mapOptionalInputValue<InterconnectAttachmentPartnerMetadataComputeBeta, Map<String, dynamic>>(partnerMetadata, (value) => value.toMap()),
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'router': ?router,
      'stackType': ?pulumi.Input.mapOptionalInputValue<InterconnectAttachmentStackTypeComputeBeta, String>(stackType, (value) => value.wireValue),
      'subnetLength': ?subnetLength,
      'type': ?pulumi.Input.mapOptionalInputValue<InterconnectAttachmentTypeComputeBeta, String>(type, (value) => value.wireValue),
      'vlanTag8021q': ?vlanTag8021q,
    };
  }

  factory InterconnectAttachmentComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentComputeBetaArgs(
      adminEnabled: (() { final guardedValue = map['adminEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InterconnectAttachmentBandwidthComputeBeta.fromValue(guardedValue as String)); })(),
      candidateIpv6Subnets: (() { final guardedValue = map['candidateIpv6Subnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      candidateSubnets: (() { final guardedValue = map['candidateSubnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cloudRouterIpv6InterfaceId: (() { final guardedValue = map['cloudRouterIpv6InterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerRouterIpv6InterfaceId: (() { final guardedValue = map['customerRouterIpv6InterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edgeAvailabilityDomain: (() { final guardedValue = map['edgeAvailabilityDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InterconnectAttachmentEdgeAvailabilityDomainComputeBeta.fromValue(guardedValue as String)); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InterconnectAttachmentEncryptionComputeBeta.fromValue(guardedValue as String)); })(),
      interconnect: (() { final guardedValue = map['interconnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipsecInternalAddresses: (() { final guardedValue = map['ipsecInternalAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pairingKey: (() { final guardedValue = map['pairingKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerAsn: (() { final guardedValue = map['partnerAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerMetadata: (() { final guardedValue = map['partnerMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InterconnectAttachmentPartnerMetadataComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      router: (() { final guardedValue = map['router']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackType: (() { final guardedValue = map['stackType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InterconnectAttachmentStackTypeComputeBeta.fromValue(guardedValue as String)); })(),
      subnetLength: (() { final guardedValue = map['subnetLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InterconnectAttachmentTypeComputeBeta.fromValue(guardedValue as String)); })(),
      vlanTag8021q: (() { final guardedValue = map['vlanTag8021q']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

